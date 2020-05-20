#version 150

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec4 Exposure_DoFDistance;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlags;
};

struct LightShadowGPUTransform
{
    mat4 transform;
};

struct SAParams
{
    float overlay;
    float unused1;
    float unused2;
    float unused3;
};

uniform vec4 CB0[47];
uniform vec4 CB8[24];
uniform vec4 CB3[1];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f1 = texture(DiffuseMapTexture, VARYING0);
    float f2 = f1.w;
    vec4 f3 = vec4(mix(VARYING2.xyz, f1.xyz, vec3(f2)), VARYING2.w);
    vec4 f4 = vec4(f1.xyz, VARYING2.w * f2);
    bvec4 f5 = bvec4(CB3[0].x != 0.0);
    vec4 f6 = vec4(f5.x ? f3.x : f4.x, f5.y ? f3.y : f4.y, f5.z ? f3.z : f4.z, f5.w ? f3.w : f4.w);
    vec2 f7 = texture(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f8 = f7 - vec2(1.0);
    float f9 = sqrt(clamp(1.0 + dot(vec2(1.0) - f7, f8), 0.0, 1.0));
    vec2 f10 = vec3(f8, f9).xy * f0;
    vec4 f11 = texture(SpecularMapTexture, VARYING0);
    vec3 f12 = normalize(((VARYING6.xyz * f10.x) + ((cross(VARYING5.xyz, VARYING6.xyz) * VARYING6.w) * f10.y)) + (VARYING5.xyz * f9));
    vec3 f13 = -CB0[11].xyz;
    float f14 = dot(f12, f13);
    vec3 f15 = f6.xyz;
    float f16 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture(LightGridSkylightTexture, f17), vec4(1.0), f18);
    vec3 f21 = (f19.xyz * (f19.w * 120.0)).xyz;
    float f22 = f20.x;
    float f23 = f20.y;
    vec3 f24 = VARYING7.xyz - CB0[41].xyz;
    vec3 f25 = VARYING7.xyz - CB0[42].xyz;
    vec3 f26 = VARYING7.xyz - CB0[43].xyz;
    vec4 f27 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f24, f24) < CB0[41].w) ? 0 : ((dot(f25, f25) < CB0[42].w) ? 1 : ((dot(f26, f26) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f24, f24) < CB0[41].w) ? 0 : ((dot(f25, f25) < CB0[42].w) ? 1 : ((dot(f26, f26) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f24, f24) < CB0[41].w) ? 0 : ((dot(f25, f25) < CB0[42].w) ? 1 : ((dot(f26, f26) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f24, f24) < CB0[41].w) ? 0 : ((dot(f25, f25) < CB0[42].w) ? 1 : ((dot(f26, f26) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f28 = textureLod(ShadowAtlasTexture, f27.xy, 0.0);
    vec2 f29 = vec2(0.0);
    f29.x = CB0[45].z;
    vec2 f30 = f29;
    f30.y = CB0[45].w;
    float f31 = (2.0 * f27.z) - 1.0;
    float f32 = exp(CB0[45].z * f31);
    float f33 = -exp((-CB0[45].w) * f31);
    vec2 f34 = (f30 * CB0[46].y) * vec2(f32, f33);
    vec2 f35 = f34 * f34;
    float f36 = f28.x;
    float f37 = max(f28.y - (f36 * f36), f35.x);
    float f38 = f32 - f36;
    float f39 = f28.z;
    float f40 = max(f28.w - (f39 * f39), f35.y);
    float f41 = f33 - f39;
    float f42 = (f14 > 0.0) ? mix(f23, mix(min((f32 <= f36) ? 1.0 : clamp(((f37 / (f37 + (f38 * f38))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f33 <= f39) ? 1.0 : clamp(((f40 / (f40 + (f41 * f41))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f23, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    float f43 = length(VARYING4.xyz);
    vec3 f44 = VARYING4.xyz / vec3(f43);
    vec3 f45 = (f15 * f15).xyz;
    float f46 = CB0[26].w * f0;
    float f47 = max(f11.y, 0.04500000178813934326171875);
    vec3 f48 = reflect(-f44, f12);
    float f49 = f47 * 5.0;
    vec3 f50 = vec4(f48, f49).xyz;
    vec4 f51 = texture(PrecomputedBRDFTexture, vec2(f47, max(9.9999997473787516355514526367188e-05, dot(f12, f44))));
    float f52 = f11.x * f46;
    vec3 f53 = mix(vec3(0.039999999105930328369140625), f45, vec3(f52));
    vec3 f54 = normalize(f13 + f44);
    float f55 = clamp(f14, 0.0, 1.0);
    float f56 = f47 * f47;
    float f57 = max(0.001000000047497451305389404296875, dot(f12, f54));
    float f58 = dot(f13, f54);
    float f59 = 1.0 - f58;
    float f60 = f59 * f59;
    float f61 = (f60 * f60) * f59;
    vec3 f62 = vec3(f61) + (f53 * (1.0 - f61));
    float f63 = f56 * f56;
    float f64 = (((f57 * f63) - f57) * f57) + 1.0;
    float f65 = 1.0 - f52;
    float f66 = f46 * f65;
    vec3 f67 = vec3(f65);
    float f68 = f51.x;
    float f69 = f51.y;
    vec3 f70 = ((f53 * f68) + vec3(f69)) / vec3(f68 + f69);
    vec3 f71 = f67 - (f70 * f66);
    vec3 f72 = f12 * f12;
    bvec3 f73 = lessThan(f12, vec3(0.0));
    vec3 f74 = vec3(f73.x ? f72.x : vec3(0.0).x, f73.y ? f72.y : vec3(0.0).y, f73.z ? f72.z : vec3(0.0).z);
    vec3 f75 = f72 - f74;
    float f76 = f75.x;
    float f77 = f75.y;
    float f78 = f75.z;
    float f79 = f74.x;
    float f80 = f74.y;
    float f81 = f74.z;
    vec3 f82 = (mix(textureLod(PrefilteredEnvIndoorTexture, f50, f49).xyz * f21, textureLod(PrefilteredEnvTexture, f50, f49).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f48.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f22)) * f70) * f46;
    vec3 f83 = ((((((((f67 - (f62 * f66)) * CB0[10].xyz) * f55) * f42) + (f71 * (((((((CB0[35].xyz * f76) + (CB0[37].xyz * f77)) + (CB0[39].xyz * f78)) + (CB0[36].xyz * f79)) + (CB0[38].xyz * f80)) + (CB0[40].xyz * f81)) + (((((((CB0[29].xyz * f76) + (CB0[31].xyz * f77)) + (CB0[33].xyz * f78)) + (CB0[30].xyz * f79)) + (CB0[32].xyz * f80)) + (CB0[34].xyz * f81)) * f22)))) + (CB0[27].xyz + (CB0[28].xyz * f22))) * f45) + ((((f62 * (((f63 + (f63 * f63)) / (((f64 * f64) * ((f58 * 3.0) + 0.5)) * ((f57 * 0.75) + 0.25))) * f55)) * CB0[10].xyz) * f42) + f82)) + (f21 * mix(f45, f82 * (1.0 / (max(max(f82.x, f82.y), f82.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f71) * (f46 * (1.0 - f22))));
    float f84 = f6.w;
    vec4 f85 = vec4(f83.x, f83.y, f83.z, vec4(0.0).w);
    f85.w = f84;
    float f86 = clamp(exp2((CB0[13].z * f43) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f87 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f86) * 5.0).xyz;
    bvec3 f88 = bvec3(CB0[13].w != 0.0);
    vec3 f89 = sqrt(clamp(mix(vec3(f88.x ? CB0[14].xyz.x : f87.x, f88.y ? CB0[14].xyz.y : f87.y, f88.z ? CB0[14].xyz.z : f87.z), f85.xyz, vec3(f86)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f90 = vec4(f89.x, f89.y, f89.z, f85.w);
    f90.w = f84;
    _entryPointOutput = f90;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5

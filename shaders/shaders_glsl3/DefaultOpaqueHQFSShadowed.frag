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

uniform vec4 CB0[47];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = normalize(VARYING5.xyz);
    vec3 f1 = -CB0[11].xyz;
    float f2 = dot(f0, f1);
    vec3 f3 = (texture(DiffuseMapTexture, VARYING0) * VARYING2).xyz;
    float f4 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f5 = VARYING3.yzx - (VARYING3.yzx * f4);
    vec4 f6 = vec4(clamp(f4, 0.0, 1.0));
    vec4 f7 = mix(texture(LightMapTexture, f5), vec4(0.0), f6);
    vec4 f8 = mix(texture(LightGridSkylightTexture, f5), vec4(1.0), f6);
    vec3 f9 = (f7.xyz * (f7.w * 120.0)).xyz;
    float f10 = f8.x;
    float f11 = f8.y;
    vec3 f12 = VARYING6.xyz - CB0[41].xyz;
    vec3 f13 = VARYING6.xyz - CB0[42].xyz;
    vec3 f14 = VARYING6.xyz - CB0[43].xyz;
    vec4 f15 = vec4(VARYING6.xyz, 1.0) * mat4(CB8[((dot(f12, f12) < CB0[41].w) ? 0 : ((dot(f13, f13) < CB0[42].w) ? 1 : ((dot(f14, f14) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f12, f12) < CB0[41].w) ? 0 : ((dot(f13, f13) < CB0[42].w) ? 1 : ((dot(f14, f14) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f12, f12) < CB0[41].w) ? 0 : ((dot(f13, f13) < CB0[42].w) ? 1 : ((dot(f14, f14) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f12, f12) < CB0[41].w) ? 0 : ((dot(f13, f13) < CB0[42].w) ? 1 : ((dot(f14, f14) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f16 = textureLod(ShadowAtlasTexture, f15.xy, 0.0);
    vec2 f17 = vec2(0.0);
    f17.x = CB0[45].z;
    vec2 f18 = f17;
    f18.y = CB0[45].w;
    float f19 = (2.0 * f15.z) - 1.0;
    float f20 = exp(CB0[45].z * f19);
    float f21 = -exp((-CB0[45].w) * f19);
    vec2 f22 = (f18 * CB0[46].y) * vec2(f20, f21);
    vec2 f23 = f22 * f22;
    float f24 = f16.x;
    float f25 = max(f16.y - (f24 * f24), f23.x);
    float f26 = f20 - f24;
    float f27 = f16.z;
    float f28 = max(f16.w - (f27 * f27), f23.y);
    float f29 = f21 - f27;
    float f30 = (f2 > 0.0) ? mix(f11, mix(min((f20 <= f24) ? 1.0 : clamp(((f25 / (f25 + (f26 * f26))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f21 <= f27) ? 1.0 : clamp(((f28 / (f28 + (f29 * f29))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f11, clamp((length(VARYING6.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    float f31 = length(VARYING4.xyz);
    vec3 f32 = VARYING4.xyz / vec3(f31);
    vec3 f33 = (f3 * f3).xyz;
    float f34 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    float f35 = max(VARYING5.w, 0.04500000178813934326171875);
    vec3 f36 = reflect(-f32, f0);
    float f37 = f35 * 5.0;
    vec3 f38 = vec4(f36, f37).xyz;
    vec4 f39 = texture(PrecomputedBRDFTexture, vec2(f35, max(9.9999997473787516355514526367188e-05, dot(f0, f32))));
    float f40 = VARYING6.w * f34;
    vec3 f41 = mix(vec3(0.039999999105930328369140625), f33, vec3(f40));
    vec3 f42 = normalize(f1 + f32);
    float f43 = clamp(f2, 0.0, 1.0);
    float f44 = f35 * f35;
    float f45 = max(0.001000000047497451305389404296875, dot(f0, f42));
    float f46 = dot(f1, f42);
    float f47 = 1.0 - f46;
    float f48 = f47 * f47;
    float f49 = (f48 * f48) * f47;
    vec3 f50 = vec3(f49) + (f41 * (1.0 - f49));
    float f51 = f44 * f44;
    float f52 = (((f45 * f51) - f45) * f45) + 1.0;
    float f53 = 1.0 - f40;
    float f54 = f34 * f53;
    vec3 f55 = vec3(f53);
    float f56 = f39.x;
    float f57 = f39.y;
    vec3 f58 = ((f41 * f56) + vec3(f57)) / vec3(f56 + f57);
    vec3 f59 = f55 - (f58 * f54);
    vec3 f60 = f0 * f0;
    bvec3 f61 = lessThan(f0, vec3(0.0));
    vec3 f62 = vec3(f61.x ? f60.x : vec3(0.0).x, f61.y ? f60.y : vec3(0.0).y, f61.z ? f60.z : vec3(0.0).z);
    vec3 f63 = f60 - f62;
    float f64 = f63.x;
    float f65 = f63.y;
    float f66 = f63.z;
    float f67 = f62.x;
    float f68 = f62.y;
    float f69 = f62.z;
    vec3 f70 = (mix(textureLod(PrefilteredEnvIndoorTexture, f38, f37).xyz * f9, textureLod(PrefilteredEnvTexture, f38, f37).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f36.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f10)) * f58) * f34;
    vec3 f71 = ((((((((f55 - (f50 * f54)) * CB0[10].xyz) * f43) * f30) + (f59 * (((((((CB0[35].xyz * f64) + (CB0[37].xyz * f65)) + (CB0[39].xyz * f66)) + (CB0[36].xyz * f67)) + (CB0[38].xyz * f68)) + (CB0[40].xyz * f69)) + (((((((CB0[29].xyz * f64) + (CB0[31].xyz * f65)) + (CB0[33].xyz * f66)) + (CB0[30].xyz * f67)) + (CB0[32].xyz * f68)) + (CB0[34].xyz * f69)) * f10)))) + (CB0[27].xyz + (CB0[28].xyz * f10))) * f33) + ((((f50 * (((f51 + (f51 * f51)) / (((f52 * f52) * ((f46 * 3.0) + 0.5)) * ((f45 * 0.75) + 0.25))) * f43)) * CB0[10].xyz) * f30) + f70)) + (f9 * mix(f33, f70 * (1.0 / (max(max(f70.x, f70.y), f70.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f59) * (f34 * (1.0 - f10))));
    vec4 f72 = vec4(f71.x, f71.y, f71.z, vec4(0.0).w);
    f72.w = 1.0;
    float f73 = clamp(exp2((CB0[13].z * f31) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f74 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f73) * 5.0).xyz;
    bvec3 f75 = bvec3(CB0[13].w != 0.0);
    vec3 f76 = sqrt(clamp(mix(vec3(f75.x ? CB0[14].xyz.x : f74.x, f75.y ? CB0[14].xyz.y : f74.y, f75.z ? CB0[14].xyz.z : f74.z), f72.xyz, vec3(f73)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f77 = vec4(f76.x, f76.y, f76.z, f72.w);
    f77.w = 1.0;
    _entryPointOutput = f77;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3

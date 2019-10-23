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
    vec3 Exposure;
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
    float debugFlagsShadows;
};

struct LightShadowGPUTransform
{
    mat4 transform;
};

uniform vec4 CB0[47];
uniform vec4 CB8[24];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
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
    vec3 f3 = (texture(DiffuseMapTexture, VARYING0.xy) * VARYING2).xyz;
    float f4 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f5 = VARYING3.yzx - (VARYING3.yzx * f4);
    vec4 f6 = vec4(clamp(f4, 0.0, 1.0));
    vec4 f7 = mix(texture(LightMapTexture, f5), vec4(0.0), f6);
    vec4 f8 = mix(texture(LightGridSkylightTexture, f5), vec4(1.0), f6);
    float f9 = f8.x;
    float f10 = f8.y;
    vec3 f11 = VARYING6.xyz - CB0[41].xyz;
    vec3 f12 = VARYING6.xyz - CB0[42].xyz;
    vec3 f13 = VARYING6.xyz - CB0[43].xyz;
    vec4 f14 = vec4(VARYING6.xyz, 1.0) * mat4(CB8[((dot(f11, f11) < CB0[41].w) ? 0 : ((dot(f12, f12) < CB0[42].w) ? 1 : ((dot(f13, f13) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f11, f11) < CB0[41].w) ? 0 : ((dot(f12, f12) < CB0[42].w) ? 1 : ((dot(f13, f13) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f11, f11) < CB0[41].w) ? 0 : ((dot(f12, f12) < CB0[42].w) ? 1 : ((dot(f13, f13) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f11, f11) < CB0[41].w) ? 0 : ((dot(f12, f12) < CB0[42].w) ? 1 : ((dot(f13, f13) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f15 = textureLod(ShadowAtlasTexture, f14.xy, 0.0);
    vec2 f16 = vec2(0.0);
    f16.x = CB0[45].z;
    vec2 f17 = f16;
    f17.y = CB0[45].w;
    float f18 = (2.0 * f14.z) - 1.0;
    float f19 = exp(CB0[45].z * f18);
    float f20 = -exp((-CB0[45].w) * f18);
    vec2 f21 = (f17 * CB0[46].y) * vec2(f19, f20);
    vec2 f22 = f21 * f21;
    float f23 = f15.x;
    float f24 = max(f15.y - (f23 * f23), f22.x);
    float f25 = f19 - f23;
    float f26 = f15.z;
    float f27 = max(f15.w - (f26 * f26), f22.y);
    float f28 = f20 - f26;
    float f29 = (f2 > 0.0) ? mix(f10, mix(min((f19 <= f23) ? 1.0 : clamp(((f24 / (f24 + (f25 * f25))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f20 <= f26) ? 1.0 : clamp(((f27 / (f27 + (f28 * f28))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f10, clamp((length(VARYING6.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f30 = normalize(VARYING4.xyz);
    vec3 f31 = (f3 * f3).xyz;
    float f32 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    float f33 = max(VARYING5.w, 0.04500000178813934326171875);
    float f34 = f33 * 5.0;
    vec3 f35 = vec4(reflect(-f30, f0), f34).xyz;
    vec4 f36 = texture(PrecomputedBRDFTexture, vec2(f33, max(9.9999997473787516355514526367188e-05, dot(f0, f30))));
    vec3 f37 = mix(vec3(0.039999999105930328369140625), f31, vec3(VARYING6.w));
    vec3 f38 = normalize(f1 + f30);
    float f39 = clamp(f2, 0.0, 1.0);
    float f40 = f33 * f33;
    float f41 = max(0.001000000047497451305389404296875, dot(f0, f38));
    float f42 = dot(f1, f38);
    float f43 = 1.0 - f42;
    float f44 = f43 * f43;
    float f45 = (f44 * f44) * f43;
    vec3 f46 = vec3(f45) + (f37 * (1.0 - f45));
    float f47 = f40 * f40;
    float f48 = (((f41 * f47) - f41) * f41) + 1.0;
    float f49 = 1.0 - (VARYING6.w * f32);
    float f50 = f36.x;
    float f51 = f36.y;
    vec3 f52 = ((f37 * f50) + vec3(f51)) / vec3(f50 + f51);
    vec3 f53 = (vec3(1.0) - (f52 * f32)) * f49;
    vec3 f54 = f0 * f0;
    bvec3 f55 = lessThan(f0, vec3(0.0));
    vec3 f56 = vec3(f55.x ? f54.x : vec3(0.0).x, f55.y ? f54.y : vec3(0.0).y, f55.z ? f54.z : vec3(0.0).z);
    vec3 f57 = f54 - f56;
    float f58 = f57.x;
    float f59 = f57.y;
    float f60 = f57.z;
    float f61 = f56.x;
    float f62 = f56.y;
    float f63 = f56.z;
    vec3 f64 = (mix(textureLod(PrefilteredEnvIndoorTexture, f35, f34).xyz, textureLod(PrefilteredEnvTexture, f35, f34).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f0.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f9)) * f52) * f32;
    vec3 f65 = (((((((((vec3(1.0) - (f46 * f32)) * f49) * CB0[10].xyz) * f39) * f29) + (f53 * (((((((CB0[35].xyz * f58) + (CB0[37].xyz * f59)) + (CB0[39].xyz * f60)) + (CB0[36].xyz * f61)) + (CB0[38].xyz * f62)) + (CB0[40].xyz * f63)) + (((((((CB0[29].xyz * f58) + (CB0[31].xyz * f59)) + (CB0[33].xyz * f60)) + (CB0[30].xyz * f61)) + (CB0[32].xyz * f62)) + (CB0[34].xyz * f63)) * f9)))) + (CB0[27].xyz + (CB0[28].xyz * f9))) * f31) + (((((f46 * ((f47 + (f47 * f47)) / (((f48 * f48) * ((f42 * 3.0) + 0.5)) * ((f41 * 0.75) + 0.25)))) * CB0[10].xyz) * f39) * f29) + f64)) + ((f7.xyz * (f7.w * 120.0)).xyz * mix(f31, f64 * (1.0 / (max(max(f64.x, f64.y), f64.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f53) * f32) * (1.0 - f9)));
    vec4 f66 = vec4(f65.x, f65.y, f65.z, vec4(0.0).w);
    f66.w = 1.0;
    vec3 f67 = mix(CB0[14].xyz, (sqrt(clamp(f66.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f67.x, f67.y, f67.z, f66.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3

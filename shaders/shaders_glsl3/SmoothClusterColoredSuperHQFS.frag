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

uniform vec4 CB0[47];
uniform vec4 CB4[36];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray NormalMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec3 VARYING7;
in vec3 VARYING8;
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(AlbedoMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(AlbedoMapTexture, f2);
    vec4 f4 = texture(AlbedoMapTexture, VARYING3.xyz);
    int f5 = int(VARYING9.x + 0.5);
    int f6 = int(VARYING9.y + 0.5);
    int f7 = int(VARYING9.z + 0.5);
    vec2 f8 = f1.xz - vec2(0.5);
    vec2 f9 = f3.xz - vec2(0.5);
    vec2 f10 = f4.xz - vec2(0.5);
    vec3 f11 = vec3(0.0);
    f11.x = CB4[f5 * 1 + 0].x * f1.y;
    float f12 = f8.x;
    float f13 = f8.y;
    vec3 f14 = f11;
    f14.y = (CB4[f5 * 1 + 0].y * f12) - (CB4[f5 * 1 + 0].z * f13);
    vec3 f15 = f14;
    f15.z = (CB4[f5 * 1 + 0].z * f12) + (CB4[f5 * 1 + 0].y * f13);
    vec3 f16 = vec3(0.0);
    f16.x = CB4[f6 * 1 + 0].x * f3.y;
    float f17 = f9.x;
    float f18 = f9.y;
    vec3 f19 = f16;
    f19.y = (CB4[f6 * 1 + 0].y * f17) - (CB4[f6 * 1 + 0].z * f18);
    vec3 f20 = f19;
    f20.z = (CB4[f6 * 1 + 0].z * f17) + (CB4[f6 * 1 + 0].y * f18);
    vec3 f21 = vec3(0.0);
    f21.x = CB4[f7 * 1 + 0].x * f4.y;
    float f22 = f10.x;
    float f23 = f10.y;
    vec3 f24 = f21;
    f24.y = (CB4[f7 * 1 + 0].y * f22) - (CB4[f7 * 1 + 0].z * f23);
    vec3 f25 = f24;
    f25.z = (CB4[f7 * 1 + 0].z * f22) + (CB4[f7 * 1 + 0].y * f23);
    vec4 f26 = ((vec4(f15.x, f15.y, f15.z, f1.w) * VARYING0.x) + (vec4(f20.x, f20.y, f20.z, f3.w) * VARYING0.y)) + (vec4(f25.x, f25.y, f25.z, f4.w) * VARYING0.z);
    float f27 = f26.x;
    float f28 = f27 - f26.z;
    vec3 f29 = vec4(vec3(f28, f27, f28) + (vec3(f26.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f30 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f31 = -VARYING6.x;
    vec2 f32 = (((texture(NormalMapTexture, f0) * VARYING0.x) + (texture(NormalMapTexture, f2) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 f33 = f32 - vec2(1.0);
    vec3 f34 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f35 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f31), vec3(VARYING6.y, f31, 0.0), f34) * f33.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f34) * f33.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f32, f33), 0.0, 1.0)))), 0.0).xyz;
    vec4 f36 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f2) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    float f37 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f38 = VARYING4.yzx - (VARYING4.yzx * f37);
    vec4 f39 = vec4(clamp(f37, 0.0, 1.0));
    vec4 f40 = mix(texture(LightMapTexture, f38), vec4(0.0), f39);
    vec4 f41 = mix(texture(LightGridSkylightTexture, f38), vec4(1.0), f39);
    vec3 f42 = (f40.xyz * (f40.w * 120.0)).xyz;
    float f43 = f41.x;
    vec4 f44 = texture(ShadowMapTexture, VARYING5.xy);
    float f45 = (1.0 - ((step(f44.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f44.y)) * f41.y;
    vec3 f46 = normalize(VARYING8);
    vec3 f47 = (f29 * f29).xyz;
    float f48 = f36.y;
    float f49 = CB0[26].w * f30;
    vec3 f50 = reflect(-f46, f35);
    vec3 f51 = -CB0[11].xyz;
    vec3 f52 = normalize(f51 + f46);
    float f53 = dot(f35, f51);
    float f54 = clamp(f53, 0.0, 1.0);
    float f55 = f48 * f48;
    float f56 = max(0.001000000047497451305389404296875, dot(f35, f52));
    float f57 = dot(f51, f52);
    float f58 = 1.0 - f57;
    float f59 = f58 * f58;
    float f60 = (f59 * f59) * f58;
    vec3 f61 = vec3(f60) + (vec3(0.039999999105930328369140625) * (1.0 - f60));
    float f62 = f55 * f55;
    float f63 = (((f56 * f62) - f56) * f56) + 1.0;
    float f64 = f48 * 5.0;
    vec3 f65 = vec4(f50, f64).xyz;
    vec4 f66 = texture(PrecomputedBRDFTexture, vec2(f48, max(9.9999997473787516355514526367188e-05, dot(f35, f46))));
    float f67 = f66.x;
    float f68 = f66.y;
    vec3 f69 = ((vec3(0.039999999105930328369140625) * f67) + vec3(f68)) / vec3(f67 + f68);
    vec3 f70 = f69 * f49;
    vec3 f71 = f35 * f35;
    bvec3 f72 = lessThan(f35, vec3(0.0));
    vec3 f73 = vec3(f72.x ? f71.x : vec3(0.0).x, f72.y ? f71.y : vec3(0.0).y, f72.z ? f71.z : vec3(0.0).z);
    vec3 f74 = f71 - f73;
    float f75 = f74.x;
    float f76 = f74.y;
    float f77 = f74.z;
    float f78 = f73.x;
    float f79 = f73.y;
    float f80 = f73.z;
    vec3 f81 = (mix(textureLod(PrefilteredEnvIndoorTexture, f65, f64).xyz * f42, textureLod(PrefilteredEnvTexture, f65, f64).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f50.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f43)) * f69) * f49;
    vec3 f82 = ((((((((((vec3(1.0) - (f61 * f49)) * CB0[10].xyz) * f54) + (CB0[12].xyz * clamp(-f53, 0.0, 1.0))) * f45) + ((vec3(1.0) - f70) * (((((((CB0[35].xyz * f75) + (CB0[37].xyz * f76)) + (CB0[39].xyz * f77)) + (CB0[36].xyz * f78)) + (CB0[38].xyz * f79)) + (CB0[40].xyz * f80)) + (((((((CB0[29].xyz * f75) + (CB0[31].xyz * f76)) + (CB0[33].xyz * f77)) + (CB0[30].xyz * f78)) + (CB0[32].xyz * f79)) + (CB0[34].xyz * f80)) * f43)))) + (CB0[27].xyz + (CB0[28].xyz * f43))) + vec3((f36.z * 2.0) * f30)) * f47) + ((((((f61 * (((f62 + (f62 * f62)) / (((f63 * f63) * ((f57 * 3.0) + 0.5)) * ((f56 * 0.75) + 0.25))) * f54)) * CB0[10].xyz) * f45) * f30) * VARYING0.w) + f81)) + (f42 * mix(f47, f81 * (1.0 / (max(max(f81.x, f81.y), f81.z) + 0.00999999977648258209228515625)), f70 * (f49 * (1.0 - f43))));
    vec4 f83 = vec4(f82.x, f82.y, f82.z, vec4(0.0).w);
    f83.w = 1.0;
    float f84 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f85 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[13].y, f84) * 5.0).xyz;
    bvec3 f86 = bvec3(CB0[13].w != 0.0);
    vec3 f87 = sqrt(clamp(mix(vec3(f86.x ? CB0[14].xyz.x : f85.x, f86.y ? CB0[14].xyz.y : f85.y, f86.z ? CB0[14].xyz.z : f85.z), f83.xyz, vec3(f84)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f87.x, f87.y, f87.z, f83.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2

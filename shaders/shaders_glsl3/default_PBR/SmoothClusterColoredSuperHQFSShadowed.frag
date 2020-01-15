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
    float debugFlags;
};

struct LightShadowGPUTransform
{
    mat4 transform;
};

uniform vec4 CB0[47];
uniform vec4 CB8[24];
uniform vec4 CB4[36];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
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
in vec4 VARYING7;
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
    float f30 = clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0);
    float f31 = -VARYING6.x;
    vec2 f32 = (((texture(NormalMapTexture, f0) * VARYING0.x) + (texture(NormalMapTexture, f2) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 f33 = f32 - vec2(1.0);
    vec3 f34 = vec3(dot(VARYING8, VARYING0.xyz));
    vec3 f35 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f31), vec3(VARYING6.y, f31, 0.0), f34) * f33.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f34) * f33.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f32, f33), 0.0, 1.0)))), 0.0).xyz;
    vec4 f36 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f2) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 f37 = -CB0[11].xyz;
    float f38 = dot(f35, f37);
    float f39 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f40 = VARYING4.yzx - (VARYING4.yzx * f39);
    vec4 f41 = vec4(clamp(f39, 0.0, 1.0));
    vec4 f42 = mix(texture(LightMapTexture, f40), vec4(0.0), f41);
    vec4 f43 = mix(texture(LightGridSkylightTexture, f40), vec4(1.0), f41);
    float f44 = f43.y;
    vec3 f45 = VARYING5.xyz - CB0[41].xyz;
    vec3 f46 = VARYING5.xyz - CB0[42].xyz;
    vec3 f47 = VARYING5.xyz - CB0[43].xyz;
    vec4 f48 = vec4(VARYING5.xyz, 1.0) * mat4(CB8[((dot(f45, f45) < CB0[41].w) ? 0 : ((dot(f46, f46) < CB0[42].w) ? 1 : ((dot(f47, f47) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f45, f45) < CB0[41].w) ? 0 : ((dot(f46, f46) < CB0[42].w) ? 1 : ((dot(f47, f47) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f45, f45) < CB0[41].w) ? 0 : ((dot(f46, f46) < CB0[42].w) ? 1 : ((dot(f47, f47) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f45, f45) < CB0[41].w) ? 0 : ((dot(f46, f46) < CB0[42].w) ? 1 : ((dot(f47, f47) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f49 = textureLod(ShadowAtlasTexture, f48.xy, 0.0);
    vec2 f50 = vec2(0.0);
    f50.x = CB0[45].z;
    vec2 f51 = f50;
    f51.y = CB0[45].w;
    float f52 = (2.0 * f48.z) - 1.0;
    float f53 = exp(CB0[45].z * f52);
    float f54 = -exp((-CB0[45].w) * f52);
    vec2 f55 = (f51 * CB0[46].y) * vec2(f53, f54);
    vec2 f56 = f55 * f55;
    float f57 = f49.x;
    float f58 = max(f49.y - (f57 * f57), f56.x);
    float f59 = f53 - f57;
    float f60 = f49.z;
    float f61 = max(f49.w - (f60 * f60), f56.y);
    float f62 = f54 - f60;
    float f63 = (f38 > 0.0) ? mix(f44, mix(min((f53 <= f57) ? 1.0 : clamp(((f58 / (f58 + (f59 * f59))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f54 <= f60) ? 1.0 : clamp(((f61 / (f61 + (f62 * f62))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f44, clamp((length(VARYING5.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    float f64 = f36.y;
    vec3 f65 = normalize(f37 + normalize(VARYING7.xyz));
    float f66 = clamp(f38, 0.0, 1.0);
    float f67 = f64 * f64;
    float f68 = max(0.001000000047497451305389404296875, dot(f35, f65));
    float f69 = dot(f37, f65);
    float f70 = 1.0 - f69;
    float f71 = f70 * f70;
    float f72 = (f71 * f71) * f70;
    vec3 f73 = vec3(f72) + (vec3(0.039999999105930328369140625) * (1.0 - f72));
    float f74 = f67 * f67;
    float f75 = (((f68 * f74) - f68) * f68) + 1.0;
    vec3 f76 = ((((((((vec3(1.0) - (f73 * (CB0[26].w * f30))) * 1.0) * CB0[10].xyz) * f66) * f63) + min((f42.xyz * (f42.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f43.x)), vec3(CB0[16].w))) + vec3((f36.z * 2.0) * f30)) * (f29 * f29).xyz) + (((((f73 * ((f74 + (f74 * f74)) / (((f75 * f75) * ((f69 * 3.0) + 0.5)) * ((f68 * 0.75) + 0.25)))) * CB0[10].xyz) * f66) * f63) * f30);
    vec4 f77 = vec4(f76.x, f76.y, f76.z, vec4(0.0).w);
    f77.w = 1.0;
    vec3 f78 = mix(CB0[14].xyz, sqrt(clamp(f77.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f78.x, f78.y, f78.z, f77.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2

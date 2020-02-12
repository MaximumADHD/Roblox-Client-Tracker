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
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec3 f1 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f2 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f1).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f3 = f2.yz - vec2(0.5);
    float f4 = f2.x;
    float f5 = f4 - f3.y;
    vec3 f6 = vec4(vec3(f5, f4, f5) + (vec3(f3.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f7 = clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0);
    vec3 f8 = normalize(VARYING6);
    vec4 f9 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 f10 = -CB0[11].xyz;
    float f11 = dot(f8, f10);
    float f12 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f13 = VARYING4.yzx - (VARYING4.yzx * f12);
    vec4 f14 = vec4(clamp(f12, 0.0, 1.0));
    vec4 f15 = mix(texture(LightMapTexture, f13), vec4(0.0), f14);
    vec4 f16 = mix(texture(LightGridSkylightTexture, f13), vec4(1.0), f14);
    vec3 f17 = (f15.xyz * (f15.w * 120.0)).xyz;
    float f18 = f16.x;
    float f19 = f16.y;
    vec3 f20 = VARYING5.xyz - CB0[41].xyz;
    vec3 f21 = VARYING5.xyz - CB0[42].xyz;
    vec3 f22 = VARYING5.xyz - CB0[43].xyz;
    vec4 f23 = vec4(VARYING5.xyz, 1.0) * mat4(CB8[((dot(f20, f20) < CB0[41].w) ? 0 : ((dot(f21, f21) < CB0[42].w) ? 1 : ((dot(f22, f22) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f20, f20) < CB0[41].w) ? 0 : ((dot(f21, f21) < CB0[42].w) ? 1 : ((dot(f22, f22) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f20, f20) < CB0[41].w) ? 0 : ((dot(f21, f21) < CB0[42].w) ? 1 : ((dot(f22, f22) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f20, f20) < CB0[41].w) ? 0 : ((dot(f21, f21) < CB0[42].w) ? 1 : ((dot(f22, f22) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f24 = textureLod(ShadowAtlasTexture, f23.xy, 0.0);
    vec2 f25 = vec2(0.0);
    f25.x = CB0[45].z;
    vec2 f26 = f25;
    f26.y = CB0[45].w;
    float f27 = (2.0 * f23.z) - 1.0;
    float f28 = exp(CB0[45].z * f27);
    float f29 = -exp((-CB0[45].w) * f27);
    vec2 f30 = (f26 * CB0[46].y) * vec2(f28, f29);
    vec2 f31 = f30 * f30;
    float f32 = f24.x;
    float f33 = max(f24.y - (f32 * f32), f31.x);
    float f34 = f28 - f32;
    float f35 = f24.z;
    float f36 = max(f24.w - (f35 * f35), f31.y);
    float f37 = f29 - f35;
    float f38 = (f11 > 0.0) ? mix(f19, mix(min((f28 <= f32) ? 1.0 : clamp(((f33 / (f33 + (f34 * f34))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f29 <= f35) ? 1.0 : clamp(((f36 / (f36 + (f37 * f37))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f19, clamp((length(VARYING5.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f39 = normalize(VARYING7.xyz);
    vec3 f40 = (f6 * f6).xyz;
    float f41 = f9.y;
    float f42 = CB0[26].w * f7;
    vec3 f43 = reflect(-f39, f8);
    vec3 f44 = normalize(f10 + f39);
    float f45 = clamp(f11, 0.0, 1.0);
    float f46 = f41 * f41;
    float f47 = max(0.001000000047497451305389404296875, dot(f8, f44));
    float f48 = dot(f10, f44);
    float f49 = 1.0 - f48;
    float f50 = f49 * f49;
    float f51 = (f50 * f50) * f49;
    vec3 f52 = vec3(f51) + (vec3(0.039999999105930328369140625) * (1.0 - f51));
    float f53 = f46 * f46;
    float f54 = (((f47 * f53) - f47) * f47) + 1.0;
    float f55 = f41 * 5.0;
    vec3 f56 = vec4(f43, f55).xyz;
    vec4 f57 = texture(PrecomputedBRDFTexture, vec2(f41, max(9.9999997473787516355514526367188e-05, dot(f8, f39))));
    float f58 = f57.x;
    float f59 = f57.y;
    vec3 f60 = ((vec3(0.039999999105930328369140625) * f58) + vec3(f59)) / vec3(f58 + f59);
    vec3 f61 = f60 * f42;
    vec3 f62 = f8 * f8;
    bvec3 f63 = lessThan(f8, vec3(0.0));
    vec3 f64 = vec3(f63.x ? f62.x : vec3(0.0).x, f63.y ? f62.y : vec3(0.0).y, f63.z ? f62.z : vec3(0.0).z);
    vec3 f65 = f62 - f64;
    float f66 = f65.x;
    float f67 = f65.y;
    float f68 = f65.z;
    float f69 = f64.x;
    float f70 = f64.y;
    float f71 = f64.z;
    vec3 f72 = (mix(textureLod(PrefilteredEnvIndoorTexture, f56, f55).xyz * f17, textureLod(PrefilteredEnvTexture, f56, f55).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f43.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f18)) * f60) * f42;
    vec3 f73 = (((((((((vec3(1.0) - (f52 * f42)) * CB0[10].xyz) * f45) * f38) + ((vec3(1.0) - f61) * (((((((CB0[35].xyz * f66) + (CB0[37].xyz * f67)) + (CB0[39].xyz * f68)) + (CB0[36].xyz * f69)) + (CB0[38].xyz * f70)) + (CB0[40].xyz * f71)) + (((((((CB0[29].xyz * f66) + (CB0[31].xyz * f67)) + (CB0[33].xyz * f68)) + (CB0[30].xyz * f69)) + (CB0[32].xyz * f70)) + (CB0[34].xyz * f71)) * f18)))) + (CB0[27].xyz + (CB0[28].xyz * f18))) + vec3((f9.z * 2.0) * f7)) * f40) + ((((((f52 * (((f53 + (f53 * f53)) / (((f54 * f54) * ((f48 * 3.0) + 0.5)) * ((f47 * 0.75) + 0.25))) * f45)) * CB0[10].xyz) * f38) * f7) * VARYING0.w) + f72)) + (f17 * mix(f40, f72 * (1.0 / (max(max(f72.x, f72.y), f72.z) + 0.00999999977648258209228515625)), f61 * (f42 * (1.0 - f18))));
    vec4 f74 = vec4(f73.x, f73.y, f73.z, vec4(0.0).w);
    f74.w = 1.0;
    vec3 f75 = mix(CB0[14].xyz, sqrt(clamp(f74.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f75.x, f75.y, f75.z, f74.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2

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
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec3 VARYING0;
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
    float f17 = f16.x;
    float f18 = f16.y;
    vec3 f19 = VARYING5.xyz - CB0[41].xyz;
    vec3 f20 = VARYING5.xyz - CB0[42].xyz;
    vec3 f21 = VARYING5.xyz - CB0[43].xyz;
    vec4 f22 = vec4(VARYING5.xyz, 1.0) * mat4(CB8[((dot(f19, f19) < CB0[41].w) ? 0 : ((dot(f20, f20) < CB0[42].w) ? 1 : ((dot(f21, f21) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f19, f19) < CB0[41].w) ? 0 : ((dot(f20, f20) < CB0[42].w) ? 1 : ((dot(f21, f21) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f19, f19) < CB0[41].w) ? 0 : ((dot(f20, f20) < CB0[42].w) ? 1 : ((dot(f21, f21) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f19, f19) < CB0[41].w) ? 0 : ((dot(f20, f20) < CB0[42].w) ? 1 : ((dot(f21, f21) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f23 = textureLod(ShadowAtlasTexture, f22.xy, 0.0);
    vec2 f24 = vec2(0.0);
    f24.x = CB0[45].z;
    vec2 f25 = f24;
    f25.y = CB0[45].w;
    float f26 = (2.0 * f22.z) - 1.0;
    float f27 = exp(CB0[45].z * f26);
    float f28 = -exp((-CB0[45].w) * f26);
    vec2 f29 = (f25 * CB0[46].y) * vec2(f27, f28);
    vec2 f30 = f29 * f29;
    float f31 = f23.x;
    float f32 = max(f23.y - (f31 * f31), f30.x);
    float f33 = f27 - f31;
    float f34 = f23.z;
    float f35 = max(f23.w - (f34 * f34), f30.y);
    float f36 = f28 - f34;
    float f37 = (f11 > 0.0) ? mix(f18, mix(min((f27 <= f31) ? 1.0 : clamp(((f32 / (f32 + (f33 * f33))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f28 <= f34) ? 1.0 : clamp(((f35 / (f35 + (f36 * f36))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f18, clamp((length(VARYING5.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f38 = normalize(VARYING7.xyz);
    vec3 f39 = (f6 * f6).xyz;
    float f40 = f9.x;
    float f41 = f9.y;
    vec3 f42 = mix(vec3(0.039999999105930328369140625), f39, vec3(f40));
    float f43 = CB0[26].w * f7;
    float f44 = f41 * 5.0;
    vec3 f45 = vec4(reflect(-f38, f8), f44).xyz;
    vec4 f46 = texture(PrecomputedBRDFTexture, vec2(f41, max(9.9999997473787516355514526367188e-05, dot(f8, f38))));
    vec3 f47 = normalize(f10 + f38);
    float f48 = clamp(f11, 0.0, 1.0);
    float f49 = f41 * f41;
    float f50 = max(0.001000000047497451305389404296875, dot(f8, f47));
    float f51 = dot(f10, f47);
    float f52 = 1.0 - f51;
    float f53 = f52 * f52;
    float f54 = (f53 * f53) * f52;
    vec3 f55 = vec3(f54) + (f42 * (1.0 - f54));
    float f56 = f49 * f49;
    float f57 = (((f50 * f56) - f50) * f50) + 1.0;
    float f58 = 1.0 - (f40 * f43);
    float f59 = f46.x;
    float f60 = f46.y;
    vec3 f61 = ((f42 * f59) + vec3(f60)) / vec3(f59 + f60);
    vec3 f62 = (vec3(1.0) - (f61 * f43)) * f58;
    vec3 f63 = f8 * f8;
    bvec3 f64 = lessThan(f8, vec3(0.0));
    vec3 f65 = vec3(f64.x ? f63.x : vec3(0.0).x, f64.y ? f63.y : vec3(0.0).y, f64.z ? f63.z : vec3(0.0).z);
    vec3 f66 = f63 - f65;
    float f67 = f66.x;
    float f68 = f66.y;
    float f69 = f66.z;
    float f70 = f65.x;
    float f71 = f65.y;
    float f72 = f65.z;
    vec3 f73 = (mix(textureLod(PrefilteredEnvIndoorTexture, f45, f44).xyz, textureLod(PrefilteredEnvTexture, f45, f44).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f8.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f17)) * f61) * f43;
    vec3 f74 = ((((((((((vec3(1.0) - (f55 * f43)) * f58) * CB0[10].xyz) * f48) * f37) + (f62 * (((((((CB0[35].xyz * f67) + (CB0[37].xyz * f68)) + (CB0[39].xyz * f69)) + (CB0[36].xyz * f70)) + (CB0[38].xyz * f71)) + (CB0[40].xyz * f72)) + (((((((CB0[29].xyz * f67) + (CB0[31].xyz * f68)) + (CB0[33].xyz * f69)) + (CB0[30].xyz * f70)) + (CB0[32].xyz * f71)) + (CB0[34].xyz * f72)) * f17)))) + (CB0[27].xyz + (CB0[28].xyz * f17))) + vec3((f9.z * 2.0) * f7)) * f39) + ((((((f55 * ((f56 + (f56 * f56)) / (((f57 * f57) * ((f51 * 3.0) + 0.5)) * ((f50 * 0.75) + 0.25)))) * CB0[10].xyz) * f48) * f37) * f7) + f73)) + ((f15.xyz * (f15.w * 120.0)).xyz * mix(f39, f73 * (1.0 / (max(max(f73.x, f73.y), f73.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f62) * f43) * (1.0 - f17)));
    vec4 f75 = vec4(f74.x, f74.y, f74.z, vec4(0.0).w);
    f75.w = 1.0;
    vec3 f76 = mix(CB0[14].xyz, sqrt(clamp(f75.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f76.x, f76.y, f76.z, f75.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$ShadowAtlasTexture=s1
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2

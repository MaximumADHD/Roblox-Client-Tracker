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
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec3 f1 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f2 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f1).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f3 = f2.yz - vec2(0.5);
    float f4 = VARYING9.x * f2.x;
    float f5 = f3.x;
    float f6 = f3.y;
    float f7 = (VARYING9.y * f5) - (VARYING9.z * f6);
    float f8 = (VARYING9.z * f5) + (VARYING9.y * f6);
    float f9 = f4 - f8;
    vec3 f10 = vec4(vec3(f9, f4, f9) + (vec3(f7, f8, f7) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f11 = clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0);
    vec3 f12 = normalize(VARYING6);
    vec4 f13 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 f14 = -CB0[11].xyz;
    float f15 = dot(f12, f14);
    float f16 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING4.yzx - (VARYING4.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture(LightGridSkylightTexture, f17), vec4(1.0), f18);
    float f21 = f20.x;
    float f22 = f20.y;
    vec3 f23 = VARYING5.xyz - CB0[41].xyz;
    vec3 f24 = VARYING5.xyz - CB0[42].xyz;
    vec3 f25 = VARYING5.xyz - CB0[43].xyz;
    vec4 f26 = vec4(VARYING5.xyz, 1.0) * mat4(CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f27 = textureLod(ShadowAtlasTexture, f26.xy, 0.0);
    vec2 f28 = vec2(0.0);
    f28.x = CB0[45].z;
    vec2 f29 = f28;
    f29.y = CB0[45].w;
    float f30 = (2.0 * f26.z) - 1.0;
    float f31 = exp(CB0[45].z * f30);
    float f32 = -exp((-CB0[45].w) * f30);
    vec2 f33 = (f29 * CB0[46].y) * vec2(f31, f32);
    vec2 f34 = f33 * f33;
    float f35 = f27.x;
    float f36 = max(f27.y - (f35 * f35), f34.x);
    float f37 = f31 - f35;
    float f38 = f27.z;
    float f39 = max(f27.w - (f38 * f38), f34.y);
    float f40 = f32 - f38;
    float f41 = (f15 > 0.0) ? mix(f22, mix(min((f31 <= f35) ? 1.0 : clamp(((f36 / (f36 + (f37 * f37))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f32 <= f38) ? 1.0 : clamp(((f39 / (f39 + (f40 * f40))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f22, clamp((length(VARYING5.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f42 = normalize(VARYING7.xyz);
    vec3 f43 = (f10 * f10).xyz;
    float f44 = f13.x;
    float f45 = f13.y;
    vec3 f46 = mix(vec3(0.039999999105930328369140625), f43, vec3(f44));
    float f47 = CB0[26].w * f11;
    float f48 = f45 * 5.0;
    vec3 f49 = vec4(reflect(-f42, f12), f48).xyz;
    vec4 f50 = texture(PrecomputedBRDFTexture, vec2(f45, max(9.9999997473787516355514526367188e-05, dot(f12, f42))));
    vec3 f51 = normalize(f14 + f42);
    float f52 = clamp(f15, 0.0, 1.0);
    float f53 = f45 * f45;
    float f54 = max(0.001000000047497451305389404296875, dot(f12, f51));
    float f55 = dot(f14, f51);
    float f56 = 1.0 - f55;
    float f57 = f56 * f56;
    float f58 = (f57 * f57) * f56;
    vec3 f59 = vec3(f58) + (f46 * (1.0 - f58));
    float f60 = f53 * f53;
    float f61 = (((f54 * f60) - f54) * f54) + 1.0;
    float f62 = 1.0 - (f44 * f47);
    float f63 = f50.x;
    float f64 = f50.y;
    vec3 f65 = ((f46 * f63) + vec3(f64)) / vec3(f63 + f64);
    vec3 f66 = (vec3(1.0) - (f65 * f47)) * f62;
    vec3 f67 = f12 * f12;
    bvec3 f68 = lessThan(f12, vec3(0.0));
    vec3 f69 = vec3(f68.x ? f67.x : vec3(0.0).x, f68.y ? f67.y : vec3(0.0).y, f68.z ? f67.z : vec3(0.0).z);
    vec3 f70 = f67 - f69;
    float f71 = f70.x;
    float f72 = f70.y;
    float f73 = f70.z;
    float f74 = f69.x;
    float f75 = f69.y;
    float f76 = f69.z;
    vec3 f77 = (mix(textureLod(PrefilteredEnvIndoorTexture, f49, f48).xyz, textureLod(PrefilteredEnvTexture, f49, f48).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f12.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f21)) * f65) * f47;
    vec3 f78 = ((((((((((vec3(1.0) - (f59 * f47)) * f62) * CB0[10].xyz) * f52) * f41) + (f66 * (((((((CB0[35].xyz * f71) + (CB0[37].xyz * f72)) + (CB0[39].xyz * f73)) + (CB0[36].xyz * f74)) + (CB0[38].xyz * f75)) + (CB0[40].xyz * f76)) + (((((((CB0[29].xyz * f71) + (CB0[31].xyz * f72)) + (CB0[33].xyz * f73)) + (CB0[30].xyz * f74)) + (CB0[32].xyz * f75)) + (CB0[34].xyz * f76)) * f21)))) + (CB0[27].xyz + (CB0[28].xyz * f21))) + vec3((f13.z * 2.0) * f11)) * f43) + ((((((f59 * ((f60 + (f60 * f60)) / (((f61 * f61) * ((f55 * 3.0) + 0.5)) * ((f54 * 0.75) + 0.25)))) * CB0[10].xyz) * f52) * f41) * f11) + f77)) + ((f19.xyz * (f19.w * 120.0)).xyz * mix(f43, f77 * (1.0 / (max(max(f77.x, f77.y), f77.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f66) * f47) * (1.0 - f21)));
    vec4 f79 = vec4(f78.x, f78.y, f78.z, vec4(0.0).w);
    f79.w = 1.0;
    vec3 f80 = mix(CB0[14].xyz, sqrt(clamp(f79.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f80.x, f80.y, f80.z, f79.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$ShadowAtlasTexture=s1
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2

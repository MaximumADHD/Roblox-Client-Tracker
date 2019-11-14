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
uniform sampler2DArray NormalMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
in vec3 VARYING8;
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
    float f8 = -VARYING6.x;
    vec2 f9 = (((texture(NormalMapTexture, f0) * VARYING0.x) + (texture(NormalMapTexture, f1) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    vec3 f11 = vec3(dot(VARYING8, VARYING0));
    vec3 f12 = normalize(((mix(vec3(VARYING6.z, 0.0, f8), vec3(VARYING6.y, f8, 0.0), f11) * f10.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f11) * f10.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0))));
    vec3 f13 = vec4(f12, 0.0).xyz;
    vec4 f14 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 f15 = -CB0[11].xyz;
    float f16 = dot(f13, f15);
    float f17 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING4.yzx - (VARYING4.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture(LightGridSkylightTexture, f18), vec4(1.0), f19);
    float f22 = f21.x;
    float f23 = f21.y;
    vec3 f24 = VARYING5.xyz - CB0[41].xyz;
    vec3 f25 = VARYING5.xyz - CB0[42].xyz;
    vec3 f26 = VARYING5.xyz - CB0[43].xyz;
    vec4 f27 = vec4(VARYING5.xyz, 1.0) * mat4(CB8[((dot(f24, f24) < CB0[41].w) ? 0 : ((dot(f25, f25) < CB0[42].w) ? 1 : ((dot(f26, f26) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f24, f24) < CB0[41].w) ? 0 : ((dot(f25, f25) < CB0[42].w) ? 1 : ((dot(f26, f26) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f24, f24) < CB0[41].w) ? 0 : ((dot(f25, f25) < CB0[42].w) ? 1 : ((dot(f26, f26) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f24, f24) < CB0[41].w) ? 0 : ((dot(f25, f25) < CB0[42].w) ? 1 : ((dot(f26, f26) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
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
    float f42 = (f16 > 0.0) ? mix(f23, mix(min((f32 <= f36) ? 1.0 : clamp(((f37 / (f37 + (f38 * f38))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f33 <= f39) ? 1.0 : clamp(((f40 / (f40 + (f41 * f41))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f23, clamp((length(VARYING5.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f43 = normalize(VARYING7.xyz);
    vec3 f44 = (f6 * f6).xyz;
    float f45 = f14.x;
    float f46 = f14.y;
    vec3 f47 = mix(vec3(0.039999999105930328369140625), f44, vec3(f45));
    float f48 = CB0[26].w * f7;
    float f49 = f46 * 5.0;
    vec3 f50 = vec4(reflect(-f43, f13), f49).xyz;
    vec4 f51 = texture(PrecomputedBRDFTexture, vec2(f46, max(9.9999997473787516355514526367188e-05, dot(f13, f43))));
    vec3 f52 = normalize(f15 + f43);
    float f53 = clamp(f16, 0.0, 1.0);
    float f54 = f46 * f46;
    float f55 = max(0.001000000047497451305389404296875, dot(f13, f52));
    float f56 = dot(f15, f52);
    float f57 = 1.0 - f56;
    float f58 = f57 * f57;
    float f59 = (f58 * f58) * f57;
    vec3 f60 = vec3(f59) + (f47 * (1.0 - f59));
    float f61 = f54 * f54;
    float f62 = (((f55 * f61) - f55) * f55) + 1.0;
    float f63 = 1.0 - (f45 * f48);
    float f64 = f51.x;
    float f65 = f51.y;
    vec3 f66 = ((f47 * f64) + vec3(f65)) / vec3(f64 + f65);
    vec3 f67 = (vec3(1.0) - (f66 * f48)) * f63;
    vec3 f68 = f13 * f13;
    bvec3 f69 = lessThan(f13, vec3(0.0));
    vec3 f70 = vec3(f69.x ? f68.x : vec3(0.0).x, f69.y ? f68.y : vec3(0.0).y, f69.z ? f68.z : vec3(0.0).z);
    vec3 f71 = f68 - f70;
    float f72 = f71.x;
    float f73 = f71.y;
    float f74 = f71.z;
    float f75 = f70.x;
    float f76 = f70.y;
    float f77 = f70.z;
    vec3 f78 = (mix(textureLod(PrefilteredEnvIndoorTexture, f50, f49).xyz, textureLod(PrefilteredEnvTexture, f50, f49).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f12.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f22)) * f66) * f48;
    vec3 f79 = ((((((((((vec3(1.0) - (f60 * f48)) * f63) * CB0[10].xyz) * f53) * f42) + (f67 * (((((((CB0[35].xyz * f72) + (CB0[37].xyz * f73)) + (CB0[39].xyz * f74)) + (CB0[36].xyz * f75)) + (CB0[38].xyz * f76)) + (CB0[40].xyz * f77)) + (((((((CB0[29].xyz * f72) + (CB0[31].xyz * f73)) + (CB0[33].xyz * f74)) + (CB0[30].xyz * f75)) + (CB0[32].xyz * f76)) + (CB0[34].xyz * f77)) * f22)))) + (CB0[27].xyz + (CB0[28].xyz * f22))) + vec3((f14.z * 2.0) * f7)) * f44) + ((((((f60 * ((f61 + (f61 * f61)) / (((f62 * f62) * ((f56 * 3.0) + 0.5)) * ((f55 * 0.75) + 0.25)))) * CB0[10].xyz) * f53) * f42) * f7) + f78)) + ((f20.xyz * (f20.w * 120.0)).xyz * mix(f44, f78 * (1.0 / (max(max(f78.x, f78.y), f78.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f67) * f48) * (1.0 - f22)));
    vec4 f80 = vec4(f79.x, f79.y, f79.z, vec4(0.0).w);
    f80.w = 1.0;
    vec3 f81 = mix(CB0[14].xyz, sqrt(clamp(f80.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f81.x, f81.y, f81.z, f80.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$ShadowAtlasTexture=s1
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2

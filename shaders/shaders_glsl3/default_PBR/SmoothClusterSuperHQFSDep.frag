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

uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
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
    vec3 f12 = normalize(((mix(vec3(VARYING6.z, 0.0, f8), vec3(VARYING6.y, f8, 0.0), f11) * f10.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f11) * f10.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0))));
    vec3 f13 = vec4(f12, 0.0).xyz;
    vec4 f14 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    float f15 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING4.yzx - (VARYING4.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    float f20 = f19.x;
    vec4 f21 = texture(ShadowMapTexture, VARYING5.xy);
    float f22 = (1.0 - ((step(f21.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f21.y)) * f19.y;
    vec3 f23 = normalize(VARYING7.xyz);
    vec3 f24 = (f6 * f6).xyz;
    float f25 = f14.x;
    float f26 = f14.y;
    vec3 f27 = mix(vec3(0.039999999105930328369140625), f24, vec3(f25));
    float f28 = CB0[26].w * f7;
    float f29 = f26 * 5.0;
    vec3 f30 = vec4(reflect(-f23, f13), f29).xyz;
    vec4 f31 = texture(PrecomputedBRDFTexture, vec2(f26, max(9.9999997473787516355514526367188e-05, dot(f13, f23))));
    vec3 f32 = -CB0[11].xyz;
    vec3 f33 = normalize(f32 + f23);
    float f34 = dot(f13, f32);
    float f35 = clamp(f34, 0.0, 1.0);
    float f36 = f26 * f26;
    float f37 = max(0.001000000047497451305389404296875, dot(f13, f33));
    float f38 = dot(f32, f33);
    float f39 = 1.0 - f38;
    float f40 = f39 * f39;
    float f41 = (f40 * f40) * f39;
    vec3 f42 = vec3(f41) + (f27 * (1.0 - f41));
    float f43 = f36 * f36;
    float f44 = (((f37 * f43) - f37) * f37) + 1.0;
    float f45 = 1.0 - (f25 * f28);
    float f46 = f31.x;
    float f47 = f31.y;
    vec3 f48 = ((f27 * f46) + vec3(f47)) / vec3(f46 + f47);
    vec3 f49 = (vec3(1.0) - (f48 * f28)) * f45;
    vec3 f50 = f13 * f13;
    bvec3 f51 = lessThan(f13, vec3(0.0));
    vec3 f52 = vec3(f51.x ? f50.x : vec3(0.0).x, f51.y ? f50.y : vec3(0.0).y, f51.z ? f50.z : vec3(0.0).z);
    vec3 f53 = f50 - f52;
    float f54 = f53.x;
    float f55 = f53.y;
    float f56 = f53.z;
    float f57 = f52.x;
    float f58 = f52.y;
    float f59 = f52.z;
    vec3 f60 = (mix(textureLod(PrefilteredEnvIndoorTexture, f30, f29).xyz, textureLod(PrefilteredEnvTexture, f30, f29).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f12.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f20)) * f48) * f28;
    vec3 f61 = (((((((((((vec3(1.0) - (f42 * f28)) * f45) * CB0[10].xyz) * f35) + ((CB0[12].xyz * (1.0 - (f25 * CB0[26].w))) * clamp(-f34, 0.0, 1.0))) * f22) + (f49 * (((((((CB0[35].xyz * f54) + (CB0[37].xyz * f55)) + (CB0[39].xyz * f56)) + (CB0[36].xyz * f57)) + (CB0[38].xyz * f58)) + (CB0[40].xyz * f59)) + (((((((CB0[29].xyz * f54) + (CB0[31].xyz * f55)) + (CB0[33].xyz * f56)) + (CB0[30].xyz * f57)) + (CB0[32].xyz * f58)) + (CB0[34].xyz * f59)) * f20)))) + (CB0[27].xyz + (CB0[28].xyz * f20))) + vec3((f14.z * 2.0) * f7)) * f24) + ((((((f42 * ((f43 + (f43 * f43)) / (((f44 * f44) * ((f38 * 3.0) + 0.5)) * ((f37 * 0.75) + 0.25)))) * CB0[10].xyz) * f35) * f22) * f7) + f60)) + ((f18.xyz * (f18.w * 120.0)).xyz * mix(f24, f60 * (1.0 / (max(max(f60.x, f60.y), f60.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f49) * f28) * (1.0 - f20)));
    vec4 f62 = vec4(f61.x, f61.y, f61.z, vec4(0.0).w);
    f62.w = 1.0;
    vec3 f63 = mix(CB0[14].xyz, sqrt(clamp(f62.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f63.x, f63.y, f63.z, f62.w);
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

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
    float f10 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f11 = VARYING4.yzx - (VARYING4.yzx * f10);
    vec4 f12 = vec4(clamp(f10, 0.0, 1.0));
    vec4 f13 = mix(texture(LightMapTexture, f11), vec4(0.0), f12);
    vec4 f14 = mix(texture(LightGridSkylightTexture, f11), vec4(1.0), f12);
    float f15 = f14.x;
    vec4 f16 = texture(ShadowMapTexture, VARYING5.xy);
    float f17 = (1.0 - ((step(f16.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f16.y)) * f14.y;
    vec3 f18 = normalize(VARYING7.xyz);
    vec3 f19 = (f6 * f6).xyz;
    float f20 = f9.x;
    float f21 = f9.y;
    vec3 f22 = mix(vec3(0.039999999105930328369140625), f19, vec3(f20));
    float f23 = CB0[26].w * f7;
    float f24 = f21 * 5.0;
    vec3 f25 = vec4(reflect(-f18, f8), f24).xyz;
    vec4 f26 = texture(PrecomputedBRDFTexture, vec2(f21, max(9.9999997473787516355514526367188e-05, dot(f8, f18))));
    vec3 f27 = -CB0[11].xyz;
    vec3 f28 = normalize(f27 + f18);
    float f29 = dot(f8, f27);
    float f30 = clamp(f29, 0.0, 1.0);
    float f31 = f21 * f21;
    float f32 = max(0.001000000047497451305389404296875, dot(f8, f28));
    float f33 = dot(f27, f28);
    float f34 = 1.0 - f33;
    float f35 = f34 * f34;
    float f36 = (f35 * f35) * f34;
    vec3 f37 = vec3(f36) + (f22 * (1.0 - f36));
    float f38 = f31 * f31;
    float f39 = (((f32 * f38) - f32) * f32) + 1.0;
    float f40 = 1.0 - (f20 * f23);
    float f41 = f26.x;
    float f42 = f26.y;
    vec3 f43 = ((f22 * f41) + vec3(f42)) / vec3(f41 + f42);
    vec3 f44 = (vec3(1.0) - (f43 * f23)) * f40;
    vec3 f45 = f8 * f8;
    bvec3 f46 = lessThan(f8, vec3(0.0));
    vec3 f47 = vec3(f46.x ? f45.x : vec3(0.0).x, f46.y ? f45.y : vec3(0.0).y, f46.z ? f45.z : vec3(0.0).z);
    vec3 f48 = f45 - f47;
    float f49 = f48.x;
    float f50 = f48.y;
    float f51 = f48.z;
    float f52 = f47.x;
    float f53 = f47.y;
    float f54 = f47.z;
    vec3 f55 = (mix(textureLod(PrefilteredEnvIndoorTexture, f25, f24).xyz, textureLod(PrefilteredEnvTexture, f25, f24).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f8.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f15)) * f43) * f23;
    vec3 f56 = (((((((((((vec3(1.0) - (f37 * f23)) * f40) * CB0[10].xyz) * f30) + ((CB0[12].xyz * (1.0 - (f20 * CB0[26].w))) * clamp(-f29, 0.0, 1.0))) * f17) + (f44 * (((((((CB0[35].xyz * f49) + (CB0[37].xyz * f50)) + (CB0[39].xyz * f51)) + (CB0[36].xyz * f52)) + (CB0[38].xyz * f53)) + (CB0[40].xyz * f54)) + (((((((CB0[29].xyz * f49) + (CB0[31].xyz * f50)) + (CB0[33].xyz * f51)) + (CB0[30].xyz * f52)) + (CB0[32].xyz * f53)) + (CB0[34].xyz * f54)) * f15)))) + (CB0[27].xyz + (CB0[28].xyz * f15))) + vec3((f9.z * 2.0) * f7)) * f19) + ((((((f37 * ((f38 + (f38 * f38)) / (((f39 * f39) * ((f33 * 3.0) + 0.5)) * ((f32 * 0.75) + 0.25)))) * CB0[10].xyz) * f30) * f17) * f7) + f55)) + ((f13.xyz * (f13.w * 120.0)).xyz * mix(f19, f55 * (1.0 / (max(max(f55.x, f55.y), f55.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f44) * f23) * (1.0 - f15)));
    vec4 f57 = vec4(f56.x, f56.y, f56.z, vec4(0.0).w);
    f57.w = 1.0;
    vec3 f58 = mix(CB0[14].xyz, sqrt(clamp(f57.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f58.x, f58.y, f58.z, f57.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2

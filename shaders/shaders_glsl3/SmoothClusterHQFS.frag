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

uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
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
    float f10 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f11 = VARYING4.yzx - (VARYING4.yzx * f10);
    vec4 f12 = vec4(clamp(f10, 0.0, 1.0));
    vec4 f13 = mix(texture(LightMapTexture, f11), vec4(0.0), f12);
    vec4 f14 = mix(texture(LightGridSkylightTexture, f11), vec4(1.0), f12);
    vec3 f15 = (f13.xyz * (f13.w * 120.0)).xyz;
    float f16 = f14.x;
    vec4 f17 = texture(ShadowMapTexture, VARYING5.xy);
    float f18 = (1.0 - ((step(f17.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f17.y)) * f14.y;
    vec3 f19 = normalize(VARYING7.xyz);
    vec3 f20 = (f6 * f6).xyz;
    float f21 = f9.y;
    float f22 = CB0[26].w * f7;
    vec3 f23 = reflect(-f19, f8);
    vec3 f24 = -CB0[11].xyz;
    vec3 f25 = normalize(f24 + f19);
    float f26 = dot(f8, f24);
    float f27 = clamp(f26, 0.0, 1.0);
    float f28 = f21 * f21;
    float f29 = max(0.001000000047497451305389404296875, dot(f8, f25));
    float f30 = dot(f24, f25);
    float f31 = 1.0 - f30;
    float f32 = f31 * f31;
    float f33 = (f32 * f32) * f31;
    vec3 f34 = vec3(f33) + (vec3(0.039999999105930328369140625) * (1.0 - f33));
    float f35 = f28 * f28;
    float f36 = (((f29 * f35) - f29) * f29) + 1.0;
    float f37 = f21 * 5.0;
    vec3 f38 = vec4(f23, f37).xyz;
    vec4 f39 = texture(PrecomputedBRDFTexture, vec2(f21, max(9.9999997473787516355514526367188e-05, dot(f8, f19))));
    float f40 = f39.x;
    float f41 = f39.y;
    vec3 f42 = ((vec3(0.039999999105930328369140625) * f40) + vec3(f41)) / vec3(f40 + f41);
    vec3 f43 = (vec3(1.0) - (f42 * f22)) * 1.0;
    vec3 f44 = f8 * f8;
    bvec3 f45 = lessThan(f8, vec3(0.0));
    vec3 f46 = vec3(f45.x ? f44.x : vec3(0.0).x, f45.y ? f44.y : vec3(0.0).y, f45.z ? f44.z : vec3(0.0).z);
    vec3 f47 = f44 - f46;
    float f48 = f47.x;
    float f49 = f47.y;
    float f50 = f47.z;
    float f51 = f46.x;
    float f52 = f46.y;
    float f53 = f46.z;
    vec3 f54 = (mix(textureLod(PrefilteredEnvIndoorTexture, f38, f37).xyz * f15, textureLod(PrefilteredEnvTexture, f38, f37).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f23.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f16)) * f42) * f22;
    vec3 f55 = (((((((((((vec3(1.0) - (f34 * f22)) * 1.0) * CB0[10].xyz) * f27) + ((CB0[12].xyz * 1.0) * clamp(-f26, 0.0, 1.0))) * f18) + (f43 * (((((((CB0[35].xyz * f48) + (CB0[37].xyz * f49)) + (CB0[39].xyz * f50)) + (CB0[36].xyz * f51)) + (CB0[38].xyz * f52)) + (CB0[40].xyz * f53)) + (((((((CB0[29].xyz * f48) + (CB0[31].xyz * f49)) + (CB0[33].xyz * f50)) + (CB0[30].xyz * f51)) + (CB0[32].xyz * f52)) + (CB0[34].xyz * f53)) * f16)))) + (CB0[27].xyz + (CB0[28].xyz * f16))) + vec3((f9.z * 2.0) * f7)) * f20) + (((((((f34 * ((f35 + (f35 * f35)) / (((f36 * f36) * ((f30 * 3.0) + 0.5)) * ((f29 * 0.75) + 0.25)))) * CB0[10].xyz) * f27) * f18) * f7) * VARYING0.w) + f54)) + (f15 * mix(f20, f54 * (1.0 / (max(max(f54.x, f54.y), f54.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f43) * f22) * (1.0 - f16)));
    vec4 f56 = vec4(f55.x, f55.y, f55.z, vec4(0.0).w);
    f56.w = 1.0;
    vec3 f57 = mix(CB0[14].xyz, sqrt(clamp(f56.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f57.x, f57.y, f57.z, f56.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$AlbedoMapTexture=s0
//$$SpecularMapTexture=s2

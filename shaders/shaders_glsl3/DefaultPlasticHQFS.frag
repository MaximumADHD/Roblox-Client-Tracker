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

struct MaterialParams
{
    float textureTiling;
    float specularScale;
    float glossScale;
    float reflectionScale;
    float normalShadowScale;
    float specularLod;
    float glossLod;
    float normalDetailTiling;
    float normalDetailScale;
    float farTilingDiffuse;
    float farTilingNormal;
    float farTilingSpecular;
    float farDiffuseCutoff;
    float farNormalCutoff;
    float farSpecularCutoff;
    float optBlendColorK;
    float farDiffuseCutoffScale;
    float farNormalCutoffScale;
    float farSpecularCutoffScale;
    float isNonSmoothPlastic;
};

uniform vec4 CB0[47];
uniform vec4 CB2[5];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = VARYING4.w * CB0[23].y;
    float f2 = clamp(1.0 - f1, 0.0, 1.0);
    vec2 f3 = texture(NormalMapTexture, f0).wy * 2.0;
    vec2 f4 = f3 - vec2(1.0);
    float f5 = sqrt(clamp(1.0 + dot(vec2(1.0) - f3, f4), 0.0, 1.0));
    vec2 f6 = ((vec3(f4, f5).xy + (vec3((texture(NormalDetailMapTexture, VARYING0.xy * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * f2).xy * CB2[4].w;
    vec3 f7 = normalize(((VARYING6.xyz * f6.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f6.y)) + (VARYING5.xyz * f5));
    vec3 f8 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f9 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING3.yzx - (VARYING3.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture(LightGridSkylightTexture, f10), vec4(1.0), f11);
    vec3 f14 = (f12.xyz * (f12.w * 120.0)).xyz;
    float f15 = f13.x;
    vec4 f16 = texture(ShadowMapTexture, VARYING7.xy);
    float f17 = (1.0 - ((step(f16.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f16.y)) * f13.y;
    vec3 f18 = normalize(VARYING4.xyz);
    float f19 = max(CB0[26].w, CB2[0].w) * f2;
    float f20 = max(CB2[0].z, 0.04500000178813934326171875);
    vec3 f21 = reflect(-f18, f7);
    float f22 = (VARYING7.w != 0.0) ? 0.0 : (f20 * 5.0);
    vec3 f23 = vec4(f21, f22).xyz;
    vec3 f24 = textureLod(PrefilteredEnvTexture, f23, f22).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f21.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f25 = texture(PrecomputedBRDFTexture, vec2(f20, max(9.9999997473787516355514526367188e-05, dot(f7, f18))));
    vec3 f26 = mix((f8 * f8).xyz, f24, vec3(VARYING7.w));
    vec3 f27 = -CB0[11].xyz;
    vec3 f28 = normalize(f27 + f18);
    float f29 = dot(f7, f27);
    float f30 = clamp(f29, 0.0, 1.0);
    float f31 = f20 * f20;
    float f32 = max(0.001000000047497451305389404296875, dot(f7, f28));
    float f33 = dot(f27, f28);
    float f34 = 1.0 - f33;
    float f35 = f34 * f34;
    float f36 = (f35 * f35) * f34;
    vec3 f37 = vec3(f36) + (vec3(0.039999999105930328369140625) * (1.0 - f36));
    float f38 = f31 * f31;
    float f39 = (((f32 * f38) - f32) * f32) + 1.0;
    float f40 = f25.x;
    float f41 = f25.y;
    vec3 f42 = ((vec3(0.039999999105930328369140625) * f40) + vec3(f41)) / vec3(f40 + f41);
    vec3 f43 = (vec3(1.0) - (f42 * f19)) * 1.0;
    vec3 f44 = f7 * f7;
    bvec3 f45 = lessThan(f7, vec3(0.0));
    vec3 f46 = vec3(f45.x ? f44.x : vec3(0.0).x, f45.y ? f44.y : vec3(0.0).y, f45.z ? f44.z : vec3(0.0).z);
    vec3 f47 = f44 - f46;
    float f48 = f47.x;
    float f49 = f47.y;
    float f50 = f47.z;
    float f51 = f46.x;
    float f52 = f46.y;
    float f53 = f46.z;
    vec3 f54 = (mix(textureLod(PrefilteredEnvIndoorTexture, f23, f22).xyz * f14, f24, vec3(f15)) * f42) * f19;
    vec3 f55 = ((((((((((vec3(1.0) - (f37 * f19)) * 1.0) * CB0[10].xyz) * f30) + ((CB0[12].xyz * 1.0) * clamp(-f29, 0.0, 1.0))) * f17) + (f43 * (((((((CB0[35].xyz * f48) + (CB0[37].xyz * f49)) + (CB0[39].xyz * f50)) + (CB0[36].xyz * f51)) + (CB0[38].xyz * f52)) + (CB0[40].xyz * f53)) + (((((((CB0[29].xyz * f48) + (CB0[31].xyz * f49)) + (CB0[33].xyz * f50)) + (CB0[30].xyz * f51)) + (CB0[32].xyz * f52)) + (CB0[34].xyz * f53)) * f15)))) + (CB0[27].xyz + (CB0[28].xyz * f15))) * f26) + (((((f37 * ((f38 + (f38 * f38)) / (((f39 * f39) * ((f33 * 3.0) + 0.5)) * ((f32 * 0.75) + 0.25)))) * CB0[10].xyz) * f30) * f17) + f54)) + (f14 * mix(f26, f54 * (1.0 / (max(max(f54.x, f54.y), f54.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f43) * f19) * (1.0 - f15)));
    vec4 f56 = vec4(f55.x, f55.y, f55.z, vec4(0.0).w);
    f56.w = VARYING2.w;
    vec2 f57 = min(VARYING0.wz, VARYING1.wz);
    float f58 = min(f57.x, f57.y) / f1;
    vec3 f59 = mix(CB0[14].xyz, (sqrt(clamp((f56.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f58)) + f58, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f59.x, f59.y, f59.z, f56.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8

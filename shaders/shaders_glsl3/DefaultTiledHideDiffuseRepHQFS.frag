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
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

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
    vec2 f3 = VARYING0.xy * CB2[0].x;
    vec4 f4 = mix(texture(DiffuseMapTexture, f3 * CB2[2].y), texture(DiffuseMapTexture, f3), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[4].x) - (CB2[3].x * CB2[4].x), 0.0, 1.0)));
    vec2 f5 = texture(NormalMapTexture, f3).wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec2 f8 = (vec3(f6, f7).xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * f2;
    float f9 = f8.x;
    vec4 f10 = texture(SpecularMapTexture, f3);
    vec3 f11 = normalize(((VARYING6.xyz * f9) + (cross(VARYING5.xyz, VARYING6.xyz) * f8.y)) + (VARYING5.xyz * f7));
    vec3 f12 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f4.w + CB2[3].w, 0.0, 1.0))) * f4.xyz) * (1.0 + (f9 * CB2[1].x))) * (texture(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f13 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING3.yzx - (VARYING3.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture(LightGridSkylightTexture, f14), vec4(1.0), f15);
    vec3 f18 = (f16.xyz * (f16.w * 120.0)).xyz;
    float f19 = f17.x;
    vec4 f20 = texture(ShadowMapTexture, VARYING7.xy);
    float f21 = (1.0 - ((step(f20.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f20.y)) * f17.y;
    vec3 f22 = normalize(VARYING4.xyz);
    vec3 f23 = (f12 * f12).xyz;
    float f24 = max(CB0[26].w, CB2[0].w) * f2;
    float f25 = max(f10.y, 0.04500000178813934326171875);
    vec3 f26 = reflect(-f22, f11);
    float f27 = f25 * 5.0;
    vec3 f28 = vec4(f26, f27).xyz;
    vec4 f29 = texture(PrecomputedBRDFTexture, vec2(f25, max(9.9999997473787516355514526367188e-05, dot(f11, f22))));
    float f30 = f10.x * f24;
    vec3 f31 = mix(vec3(0.039999999105930328369140625), f23, vec3(f30));
    vec3 f32 = -CB0[11].xyz;
    vec3 f33 = normalize(f32 + f22);
    float f34 = dot(f11, f32);
    float f35 = clamp(f34, 0.0, 1.0);
    float f36 = f25 * f25;
    float f37 = max(0.001000000047497451305389404296875, dot(f11, f33));
    float f38 = dot(f32, f33);
    float f39 = 1.0 - f38;
    float f40 = f39 * f39;
    float f41 = (f40 * f40) * f39;
    vec3 f42 = vec3(f41) + (f31 * (1.0 - f41));
    float f43 = f36 * f36;
    float f44 = (((f37 * f43) - f37) * f37) + 1.0;
    float f45 = 1.0 - f30;
    float f46 = f29.x;
    float f47 = f29.y;
    vec3 f48 = ((f31 * f46) + vec3(f47)) / vec3(f46 + f47);
    vec3 f49 = (vec3(1.0) - (f48 * f24)) * f45;
    vec3 f50 = f11 * f11;
    bvec3 f51 = lessThan(f11, vec3(0.0));
    vec3 f52 = vec3(f51.x ? f50.x : vec3(0.0).x, f51.y ? f50.y : vec3(0.0).y, f51.z ? f50.z : vec3(0.0).z);
    vec3 f53 = f50 - f52;
    float f54 = f53.x;
    float f55 = f53.y;
    float f56 = f53.z;
    float f57 = f52.x;
    float f58 = f52.y;
    float f59 = f52.z;
    vec3 f60 = (mix(textureLod(PrefilteredEnvIndoorTexture, f28, f27).xyz * f18, textureLod(PrefilteredEnvTexture, f28, f27).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f26.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f19)) * f48) * f24;
    vec3 f61 = ((((((((((vec3(1.0) - (f42 * f24)) * f45) * CB0[10].xyz) * f35) + ((CB0[12].xyz * f45) * clamp(-f34, 0.0, 1.0))) * f21) + (f49 * (((((((CB0[35].xyz * f54) + (CB0[37].xyz * f55)) + (CB0[39].xyz * f56)) + (CB0[36].xyz * f57)) + (CB0[38].xyz * f58)) + (CB0[40].xyz * f59)) + (((((((CB0[29].xyz * f54) + (CB0[31].xyz * f55)) + (CB0[33].xyz * f56)) + (CB0[30].xyz * f57)) + (CB0[32].xyz * f58)) + (CB0[34].xyz * f59)) * f19)))) + (CB0[27].xyz + (CB0[28].xyz * f19))) * f23) + (((((f42 * ((f43 + (f43 * f43)) / (((f44 * f44) * ((f38 * 3.0) + 0.5)) * ((f37 * 0.75) + 0.25)))) * CB0[10].xyz) * f35) * f21) + f60)) + (f18 * mix(f23, f60 * (1.0 / (max(max(f60.x, f60.y), f60.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f49) * f24) * (1.0 - f19)));
    vec4 f62 = vec4(f61.x, f61.y, f61.z, vec4(0.0).w);
    f62.w = VARYING2.w;
    vec2 f63 = min(VARYING0.wz, VARYING1.wz);
    float f64 = min(f63.x, f63.y) / f1;
    vec3 f65 = mix(CB0[14].xyz, (sqrt(clamp((f62.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f64)) + f64, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f65.x, f65.y, f65.z, f62.w);
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
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5

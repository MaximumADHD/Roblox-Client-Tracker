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
uniform vec4 CB8[24];
uniform vec4 CB2[5];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D ShadowAtlasTexture;
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
    vec3 f8 = -CB0[11].xyz;
    float f9 = dot(f7, f8);
    vec3 f10 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f11 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING3.yzx - (VARYING3.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture(LightGridSkylightTexture, f12), vec4(1.0), f13);
    float f16 = f15.x;
    float f17 = f15.y;
    vec3 f18 = VARYING7.xyz - CB0[41].xyz;
    vec3 f19 = VARYING7.xyz - CB0[42].xyz;
    vec3 f20 = VARYING7.xyz - CB0[43].xyz;
    vec4 f21 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f18, f18) < CB0[41].w) ? 0 : ((dot(f19, f19) < CB0[42].w) ? 1 : ((dot(f20, f20) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f18, f18) < CB0[41].w) ? 0 : ((dot(f19, f19) < CB0[42].w) ? 1 : ((dot(f20, f20) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f18, f18) < CB0[41].w) ? 0 : ((dot(f19, f19) < CB0[42].w) ? 1 : ((dot(f20, f20) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f18, f18) < CB0[41].w) ? 0 : ((dot(f19, f19) < CB0[42].w) ? 1 : ((dot(f20, f20) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f22 = textureLod(ShadowAtlasTexture, f21.xy, 0.0);
    vec2 f23 = vec2(0.0);
    f23.x = CB0[45].z;
    vec2 f24 = f23;
    f24.y = CB0[45].w;
    float f25 = (2.0 * f21.z) - 1.0;
    float f26 = exp(CB0[45].z * f25);
    float f27 = -exp((-CB0[45].w) * f25);
    vec2 f28 = (f24 * CB0[46].y) * vec2(f26, f27);
    vec2 f29 = f28 * f28;
    float f30 = f22.x;
    float f31 = max(f22.y - (f30 * f30), f29.x);
    float f32 = f26 - f30;
    float f33 = f22.z;
    float f34 = max(f22.w - (f33 * f33), f29.y);
    float f35 = f27 - f33;
    float f36 = (f9 > 0.0) ? mix(f17, mix(min((f26 <= f30) ? 1.0 : clamp(((f31 / (f31 + (f32 * f32))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f27 <= f33) ? 1.0 : clamp(((f34 / (f34 + (f35 * f35))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f17, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f37 = normalize(VARYING4.xyz);
    float f38 = CB0[26].w * f2;
    float f39 = max(CB2[0].z, 0.04500000178813934326171875);
    float f40 = (VARYING7.w != 0.0) ? 0.0 : (f39 * 5.0);
    vec3 f41 = vec4(reflect(-f37, f7), f40).xyz;
    vec3 f42 = textureLod(PrefilteredEnvTexture, f41, f40).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f7.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f43 = texture(PrecomputedBRDFTexture, vec2(f39, max(9.9999997473787516355514526367188e-05, dot(f7, f37))));
    vec3 f44 = mix((f10 * f10).xyz, f42, vec3(VARYING7.w));
    vec3 f45 = normalize(f8 + f37);
    float f46 = clamp(f9, 0.0, 1.0);
    float f47 = f39 * f39;
    float f48 = max(0.001000000047497451305389404296875, dot(f7, f45));
    float f49 = dot(f8, f45);
    float f50 = 1.0 - f49;
    float f51 = f50 * f50;
    float f52 = (f51 * f51) * f50;
    vec3 f53 = vec3(f52) + (vec3(0.039999999105930328369140625) * (1.0 - f52));
    float f54 = f47 * f47;
    float f55 = (((f48 * f54) - f48) * f48) + 1.0;
    float f56 = f43.x;
    float f57 = f43.y;
    vec3 f58 = ((vec3(0.039999999105930328369140625) * f56) + vec3(f57)) / vec3(f56 + f57);
    vec3 f59 = (vec3(1.0) - (f58 * f38)) * 1.0;
    vec3 f60 = f7 * f7;
    bvec3 f61 = lessThan(f7, vec3(0.0));
    vec3 f62 = vec3(f61.x ? f60.x : vec3(0.0).x, f61.y ? f60.y : vec3(0.0).y, f61.z ? f60.z : vec3(0.0).z);
    vec3 f63 = f60 - f62;
    float f64 = f63.x;
    float f65 = f63.y;
    float f66 = f63.z;
    float f67 = f62.x;
    float f68 = f62.y;
    float f69 = f62.z;
    vec3 f70 = (mix(textureLod(PrefilteredEnvIndoorTexture, f41, f40).xyz, f42, vec3(f16)) * f58) * f38;
    vec3 f71 = (((((((((vec3(1.0) - (f53 * f38)) * 1.0) * CB0[10].xyz) * f46) * f36) + (f59 * (((((((CB0[35].xyz * f64) + (CB0[37].xyz * f65)) + (CB0[39].xyz * f66)) + (CB0[36].xyz * f67)) + (CB0[38].xyz * f68)) + (CB0[40].xyz * f69)) + (((((((CB0[29].xyz * f64) + (CB0[31].xyz * f65)) + (CB0[33].xyz * f66)) + (CB0[30].xyz * f67)) + (CB0[32].xyz * f68)) + (CB0[34].xyz * f69)) * f16)))) + (CB0[27].xyz + (CB0[28].xyz * f16))) * f44) + (((((f53 * ((f54 + (f54 * f54)) / (((f55 * f55) * ((f49 * 3.0) + 0.5)) * ((f48 * 0.75) + 0.25)))) * CB0[10].xyz) * f46) * f36) + f70)) + ((f14.xyz * (f14.w * 120.0)).xyz * mix(f44, f70 * (1.0 / (max(max(f70.x, f70.y), f70.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f59) * f38) * (1.0 - f16)));
    vec4 f72 = vec4(f71.x, f71.y, f71.z, vec4(0.0).w);
    f72.w = VARYING2.w;
    vec2 f73 = min(VARYING0.wz, VARYING1.wz);
    float f74 = min(f73.x, f73.y) / f1;
    vec3 f75 = mix(CB0[14].xyz, (sqrt(clamp((f72.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f74)) + f74, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f75.x, f75.y, f75.z, f72.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8

#version 110
#extension GL_ARB_shader_texture_lod : require

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
uniform sampler2D WangTileMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = VARYING4.w * CB0[23].y;
    float f2 = clamp(1.0 - f1, 0.0, 1.0);
    vec2 f3 = VARYING0.xy * CB2[0].x;
    vec2 f4 = f3 * 4.0;
    vec2 f5 = f4 * 0.25;
    vec4 f6 = vec4(dFdx(f5), dFdy(f5));
    vec2 f7 = (texture2D(WangTileMapTexture, f4 * vec2(0.0078125)).zw * 0.99609375) + (fract(f4) * 0.25);
    vec2 f8 = f6.xy;
    vec2 f9 = f6.zw;
    vec4 f10 = texture2DGradARB(DiffuseMapTexture, f7, f8, f9);
    vec2 f11 = texture2DGradARB(NormalMapTexture, f7, f8, f9).wy * 2.0;
    vec2 f12 = f11 - vec2(1.0);
    float f13 = sqrt(clamp(1.0 + dot(vec2(1.0) - f11, f12), 0.0, 1.0));
    vec2 f14 = (vec3(f12, f13).xy + (vec3((texture2D(NormalDetailMapTexture, f3 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * f2;
    float f15 = f14.x;
    vec4 f16 = texture2DGradARB(SpecularMapTexture, f7, f8, f9);
    float f17 = f16.x;
    float f18 = f16.y;
    float f19 = ((1.0 - f18) * f2) * CB2[0].w;
    vec3 f20 = normalize(((VARYING6.xyz * f15) + (cross(VARYING5.xyz, VARYING6.xyz) * f14.y)) + (VARYING5.xyz * f13));
    vec3 f21 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f10.w + CB2[3].w, 0.0, 1.0))) * f10.xyz) * (1.0 + (f15 * CB2[1].x))) * (texture2D(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f22 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING3.yzx - (VARYING3.yzx * f22);
    vec4 f24 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f25 = mix(texture3D(LightMapTexture, f23), vec4(0.0), f24);
    vec4 f26 = mix(texture3D(LightGridSkylightTexture, f23), vec4(1.0), f24);
    float f27 = f26.x;
    vec4 f28 = texture2D(ShadowMapTexture, VARYING7.xy);
    float f29 = (1.0 - ((step(f28.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f28.y)) * f26.y;
    vec3 f30 = normalize(VARYING4.xyz);
    float f31 = CB0[26].w * f2;
    float f32 = max(f18, 0.04500000178813934326171875);
    float f33 = (f19 != 0.0) ? 0.0 : (f32 * 5.0);
    vec3 f34 = vec4(reflect(-f30, f20), f33).xyz;
    vec3 f35 = textureCubeLod(PrefilteredEnvTexture, f34, f33).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f20.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f36 = texture2D(PrecomputedBRDFTexture, vec2(f32, max(9.9999997473787516355514526367188e-05, dot(f20, f30))));
    vec3 f37 = mix((f21 * f21).xyz, f35, vec3(f19));
    vec3 f38 = mix(vec3(0.039999999105930328369140625), f37, vec3(f17));
    vec3 f39 = -CB0[11].xyz;
    vec3 f40 = normalize(f39 + f30);
    float f41 = dot(f20, f39);
    float f42 = clamp(f41, 0.0, 1.0);
    float f43 = f32 * f32;
    float f44 = max(0.001000000047497451305389404296875, dot(f20, f40));
    float f45 = dot(f39, f40);
    float f46 = 1.0 - f45;
    float f47 = f46 * f46;
    float f48 = (f47 * f47) * f46;
    vec3 f49 = vec3(f48) + (f38 * (1.0 - f48));
    float f50 = f43 * f43;
    float f51 = (((f44 * f50) - f44) * f44) + 1.0;
    float f52 = 1.0 - (f17 * f31);
    float f53 = f36.x;
    float f54 = f36.y;
    vec3 f55 = ((f38 * f53) + vec3(f54)) / vec3(f53 + f54);
    vec3 f56 = (vec3(1.0) - (f55 * f31)) * f52;
    vec3 f57 = f20 * f20;
    bvec3 f58 = lessThan(f20, vec3(0.0));
    vec3 f59 = vec3(f58.x ? f57.x : vec3(0.0).x, f58.y ? f57.y : vec3(0.0).y, f58.z ? f57.z : vec3(0.0).z);
    vec3 f60 = f57 - f59;
    float f61 = f60.x;
    float f62 = f60.y;
    float f63 = f60.z;
    float f64 = f59.x;
    float f65 = f59.y;
    float f66 = f59.z;
    vec3 f67 = (mix(textureCubeLod(PrefilteredEnvIndoorTexture, f34, f33).xyz, f35, vec3(f27)) * f55) * f31;
    vec3 f68 = ((((((((((vec3(1.0) - (f49 * f31)) * f52) * CB0[10].xyz) * f42) + ((CB0[12].xyz * (1.0 - (f17 * CB0[26].w))) * clamp(-f41, 0.0, 1.0))) * f29) + (f56 * (((((((CB0[35].xyz * f61) + (CB0[37].xyz * f62)) + (CB0[39].xyz * f63)) + (CB0[36].xyz * f64)) + (CB0[38].xyz * f65)) + (CB0[40].xyz * f66)) + (((((((CB0[29].xyz * f61) + (CB0[31].xyz * f62)) + (CB0[33].xyz * f63)) + (CB0[30].xyz * f64)) + (CB0[32].xyz * f65)) + (CB0[34].xyz * f66)) * f27)))) + (CB0[27].xyz + (CB0[28].xyz * f27))) * f37) + (((((f49 * ((f50 + (f50 * f50)) / (((f51 * f51) * ((f45 * 3.0) + 0.5)) * ((f44 * 0.75) + 0.25)))) * CB0[10].xyz) * f42) * f29) + f67)) + ((f25.xyz * (f25.w * 120.0)).xyz * mix(f37, f67 * (1.0 / (max(max(f67.x, f67.y), f67.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f56) * f31) * (1.0 - f27)));
    vec4 f69 = vec4(f68.x, f68.y, f68.z, vec4(0.0).w);
    f69.w = VARYING2.w;
    vec2 f70 = min(VARYING0.wz, VARYING1.wz);
    float f71 = min(f70.x, f70.y) / f1;
    vec3 f72 = mix(CB0[14].xyz, (sqrt(clamp((f69.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f71)) + f71, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(f72.x, f72.y, f72.z, f69.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5

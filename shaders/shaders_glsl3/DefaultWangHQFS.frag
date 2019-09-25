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
    vec4 LightBorder;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
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

uniform vec4 CB0[32];
uniform vec4 CB2[5];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube EnvironmentMapTexture;
uniform sampler2D WangTileMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
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
    float f1 = VARYING4.w * CB0[24].y;
    float f2 = clamp(1.0 - f1, 0.0, 1.0);
    vec2 f3 = VARYING0.xy * CB2[0].x;
    vec2 f4 = f3 * 4.0;
    vec2 f5 = f4 * 0.25;
    vec4 f6 = vec4(dFdx(f5), dFdy(f5));
    vec2 f7 = (texture(WangTileMapTexture, f4 * vec2(0.0078125)).xy * 0.99609375) + (fract(f4) * 0.25);
    vec2 f8 = f6.xy;
    vec2 f9 = f6.zw;
    vec4 f10 = textureGrad(DiffuseMapTexture, f7, f8, f9);
    vec2 f11 = textureGrad(NormalMapTexture, f7, f8, f9).wy * 2.0;
    vec2 f12 = f11 - vec2(1.0);
    float f13 = sqrt(clamp(1.0 + dot(vec2(1.0) - f11, f12), 0.0, 1.0));
    vec2 f14 = (vec3(f12, f13).xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * f2;
    float f15 = f14.x;
    vec4 f16 = textureGrad(SpecularMapTexture, f7, f8, f9);
    vec2 f17 = mix(vec2(CB2[1].y, CB2[1].z), (f16.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(f2));
    vec3 f18 = normalize(((VARYING6.xyz * f15) + (cross(VARYING5.xyz, VARYING6.xyz) * f14.y)) + (VARYING5.xyz * f13));
    vec3 f19 = -CB0[11].xyz;
    float f20 = dot(f18, f19);
    vec3 f21 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f10.w + CB2[3].w, 0.0, 1.0))) * f10.xyz) * (1.0 + (f15 * CB2[1].x))) * (texture(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f22 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING3.yzx - (VARYING3.yzx * f22);
    vec4 f24 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f25 = mix(texture(LightMapTexture, f23), vec4(0.0), f24);
    vec4 f26 = mix(texture(LightGridSkylightTexture, f23), vec4(1.0), f24);
    vec4 f27 = texture(ShadowMapTexture, VARYING7.xy);
    float f28 = (1.0 - ((step(f27.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f27.y)) * f26.y;
    vec3 f29 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, f18)).xyz;
    vec3 f30 = ((min(((f25.xyz * (f25.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f26.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(f20, 0.0, 1.0)) + (CB0[12].xyz * max(-f20, 0.0))) * f28)) * mix((f21 * f21).xyz, (f29 * f29) * CB0[15].x, vec3((f16.y * f2) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, f20) * f17.x) * f28) * pow(clamp(dot(f18, normalize(f19 + normalize(VARYING4.xyz))), 0.0, 1.0), f17.y)));
    vec4 f31 = vec4(f30.x, f30.y, f30.z, vec4(0.0).w);
    f31.w = VARYING2.w;
    vec2 f32 = min(VARYING0.wz, VARYING1.wz);
    float f33 = min(f32.x, f32.y) / f1;
    vec3 f34 = mix(CB0[14].xyz, (sqrt(clamp((f31.xyz * clamp((clamp((f1 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - f33)) + f33, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f34.x, f34.y, f34.z, f31.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$EnvironmentMapTexture=s2
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5

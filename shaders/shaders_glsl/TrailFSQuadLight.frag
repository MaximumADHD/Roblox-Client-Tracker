#version 110

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
    vec4 Technology_Exposure;
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

struct TrailParams
{
    vec4 Params;
};

uniform vec4 CB0[32];
uniform vec4 CB1[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D texTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;

void main()
{
    vec4 f0 = texture2D(texTexture, VARYING0.xy / vec2(VARYING0.w));
    vec3 f1 = (f0.xyz * VARYING1.xyz).xyz;
    vec3 f2 = vec3(CB0[15].x);
    float f3 = clamp(dot(step(CB0[20].xyz, abs(VARYING2 - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f4 = VARYING2.yzx - (VARYING2.yzx * f3);
    vec4 f5 = vec4(clamp(f3, 0.0, 1.0));
    vec4 f6 = mix(texture3D(LightMapTexture, f4), vec4(0.0), f5);
    vec4 f7 = mix(texture3D(LightGridSkylightTexture, f4), vec4(1.0), f5);
    vec4 f8 = texture2D(ShadowMapTexture, VARYING3.xy);
    vec3 f9 = mix(f1, f1 * f1, f2).xyz;
    vec3 f10 = mix(f9, (min(((f6.xyz * (f6.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f7.x), vec3(CB0[17].w)) + (CB0[10].xyz * ((1.0 - ((step(f8.x, VARYING3.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING3.z - 0.5)), 0.0, 1.0)) * f8.y)) * f7.y))) * f9, vec3(CB1[0].z)).xyz;
    float f11 = VARYING1.w * f0.w;
    vec3 f12 = mix(CB0[14].xyz, mix(f10, sqrt(clamp(f10 * CB0[15].z, vec3(0.0), vec3(1.0))), f2).xyz, vec3(clamp((CB0[13].x * length(VARYING4)) + CB0[13].y, 0.0, 1.0))).xyz * f11;
    vec4 f13 = vec4(f12.x, f12.y, f12.z, vec4(0.0).w);
    f13.w = f11 * CB1[0].y;
    gl_FragData[0] = f13;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$texTexture=s0

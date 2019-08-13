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

uniform vec4 CB0[32];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AlbedoMapTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec3 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec4 f1 = ((texture2D(AlbedoMapTexture, f0.xy).yxzw * VARYING0.x) + (texture2D(AlbedoMapTexture, f0.zw).yxzw * VARYING0.y)) + (texture2D(AlbedoMapTexture, (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw).yxzw * VARYING0.z);
    vec2 f2 = f1.yz - vec2(0.5);
    float f3 = VARYING7.x * f1.x;
    float f4 = f2.x;
    float f5 = f2.y;
    float f6 = (VARYING7.y * f4) - (VARYING7.z * f5);
    float f7 = (VARYING7.z * f4) + (VARYING7.y * f5);
    float f8 = f3 - f7;
    vec3 f9 = vec4(vec3(f8, f3, f8) + (vec3(f6, f7, f6) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f10 = vec3(CB0[15].x);
    float f11 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING4.yzx - (VARYING4.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture3D(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture3D(LightGridSkylightTexture, f12), vec4(1.0), f13);
    vec4 f16 = texture2D(ShadowMapTexture, VARYING5.xy);
    vec3 f17 = (min(((f14.xyz * (f14.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f15.x), vec3(CB0[17].w)) + (VARYING6 * ((1.0 - ((step(f16.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f16.y)) * f15.y))) * mix(f9, f9 * f9, f10).xyz;
    vec4 f18 = vec4(f17.x, f17.y, f17.z, vec4(0.0).w);
    f18.w = 1.0;
    vec3 f19 = mix(CB0[14].xyz, mix(f18.xyz, sqrt(clamp(f18.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), f10).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(f19.x, f19.y, f19.z, f18.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0

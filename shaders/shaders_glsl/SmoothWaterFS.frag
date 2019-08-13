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

struct Params
{
    vec4 WaveParams;
    vec4 WaterColor;
    vec4 WaterParams;
};

uniform vec4 CB0[32];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NormalMap1Texture;
uniform samplerCube EnvMapTexture;

varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;

void main()
{
    float _772 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _716 = VARYING5.yzx - (VARYING5.yzx * _772);
    vec4 _726 = vec4(clamp(_772, 0.0, 1.0));
    vec4 _727 = mix(texture3D(LightMapTexture, _716), vec4(0.0), _726);
    vec4 _732 = mix(texture3D(LightGridSkylightTexture, _716), vec4(1.0), _726);
    vec3 _742 = (_727.xyz * (_727.w * 120.0)).xyz;
    float _749 = _732.x;
    float _819 = -VARYING6.x;
    vec2 _880 = (((texture2D(NormalMap1Texture, VARYING2) * VARYING0.x) + (texture2D(NormalMap1Texture, VARYING3) * VARYING0.y)) + (texture2D(NormalMap1Texture, VARYING4) * VARYING0.z)).wy * 2.0;
    vec2 _882 = _880 - vec2(1.0);
    vec3 _854 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 _624 = mix(VARYING6, normalize(((mix(vec3(VARYING6.z, 0.0, _819), vec3(VARYING6.y, _819, 0.0), _854) * _882.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _854) * _882.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _880, _882), 0.0, 1.0)))), vec3(0.25));
    vec3 _631 = normalize(VARYING7.xyz);
    vec3 _658 = textureCube(EnvMapTexture, reflect(-_631, _624)).xyz;
    vec3 _913 = vec3(CB0[15].x);
    vec3 _670 = mix(CB3[1].xyz * (min((_742 + CB0[8].xyz) + (CB0[9].xyz * _749), vec3(CB0[17].w)) + (CB0[10].xyz * _732.y)), (mix(_658, (_658 * _658) * CB0[15].w, _913) * _749) + (_742 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(_624, _631))), 0.0, 1.0) + 0.300000011920928955078125) * CB3[2].z));
    vec4 _1028 = vec4(_670.x, _670.y, _670.z, vec4(0.0).w);
    _1028.w = 1.0;
    vec3 _955 = mix(CB0[14].xyz, mix(_1028.xyz, sqrt(clamp(_1028.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _913).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(_955.x, _955.y, _955.z, _1028.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$EnvMapTexture=s3

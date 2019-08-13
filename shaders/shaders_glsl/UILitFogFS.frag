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
uniform vec4 CB2[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;
varying vec3 VARYING5;

void main()
{
    vec4 _451 = texture2D(DiffuseMapTexture, VARYING0);
    vec4 _457 = vec4(1.0, 1.0, 1.0, _451.x);
    bvec4 _459 = bvec4(CB2[0].y > 0.5);
    vec4 _464 = VARYING1 * vec4(_459.x ? _457.x : _451.x, _459.y ? _457.y : _451.y, _459.z ? _457.z : _451.z, _459.w ? _457.w : _451.w);
    vec3 _466 = _464.xyz;
    vec3 _523 = vec3(CB0[15].x);
    float _625 = clamp(dot(step(CB0[20].xyz, abs(VARYING3 - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _569 = VARYING3.yzx - (VARYING3.yzx * _625);
    vec4 _579 = vec4(clamp(_625, 0.0, 1.0));
    vec4 _580 = mix(texture3D(LightMapTexture, _569), vec4(0.0), _579);
    vec4 _585 = mix(texture3D(LightGridSkylightTexture, _569), vec4(1.0), _579);
    vec4 _635 = texture2D(ShadowMapTexture, VARYING4.xy);
    vec3 _484 = mix(_466, _466 * _466, _523).xyz;
    vec3 _496 = mix(_484, (min(((_580.xyz * (_580.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _585.x), vec3(CB0[17].w)) + (VARYING2 * ((1.0 - ((step(_635.x, VARYING4.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING4.z - 0.5)), 0.0, 1.0)) * _635.y)) * _585.y))) * _484, vec3(CB2[0].z)).xyz;
    vec3 _701 = mix(CB0[14].xyz, mix(_496, sqrt(clamp(_496 * CB0[15].z, vec3(0.0), vec3(1.0))), _523).xyz, vec3(clamp((CB0[13].x * length(VARYING5)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_701.x, _701.y, _701.z, _464.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s0

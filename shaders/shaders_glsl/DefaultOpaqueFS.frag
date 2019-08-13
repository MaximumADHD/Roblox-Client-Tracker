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
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    vec3 _497 = (texture2D(DiffuseMapTexture, VARYING0.xy) * VARYING2).xyz;
    vec3 _575 = vec3(CB0[15].x);
    float _677 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _621 = VARYING3.yzx - (VARYING3.yzx * _677);
    vec4 _631 = vec4(clamp(_677, 0.0, 1.0));
    vec4 _632 = mix(texture3D(LightMapTexture, _621), vec4(0.0), _631);
    vec4 _637 = mix(texture3D(LightGridSkylightTexture, _621), vec4(1.0), _631);
    vec4 _687 = texture2D(ShadowMapTexture, VARYING6.xy);
    float _700 = (1.0 - ((step(_687.x, VARYING6.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * _687.y)) * _637.y;
    vec3 _527 = ((min(((_632.xyz * (_632.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _637.x), vec3(CB0[17].w)) + (VARYING5.xyz * _700)) * mix(_497, _497 * _497, _575).xyz) + (CB0[10].xyz * (VARYING5.w * _700));
    vec4 _826 = vec4(_527.x, _527.y, _527.z, vec4(0.0).w);
    _826.w = 1.0;
    vec3 _747 = mix(CB0[14].xyz, mix(_826.xyz, sqrt(clamp(_826.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _575).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_747.x, _747.y, _747.z, _826.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3

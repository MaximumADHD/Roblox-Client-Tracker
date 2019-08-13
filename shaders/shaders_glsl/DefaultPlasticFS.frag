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
uniform sampler2D StudsMapTexture;

varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying float VARYING7;

void main()
{
    vec2 _859 = VARYING1.xy;
    _859.y = (fract(VARYING1.y) + VARYING7) * 0.25;
    vec3 _540 = vec4(VARYING2.xyz * (texture2D(StudsMapTexture, _859).x * 2.0), VARYING2.w).xyz;
    vec3 _617 = vec3(CB0[15].x);
    float _719 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _663 = VARYING3.yzx - (VARYING3.yzx * _719);
    vec4 _673 = vec4(clamp(_719, 0.0, 1.0));
    vec4 _674 = mix(texture3D(LightMapTexture, _663), vec4(0.0), _673);
    vec4 _679 = mix(texture3D(LightGridSkylightTexture, _663), vec4(1.0), _673);
    vec4 _729 = texture2D(ShadowMapTexture, VARYING6.xy);
    float _742 = (1.0 - ((step(_729.x, VARYING6.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * _729.y)) * _679.y;
    vec3 _570 = ((min(((_674.xyz * (_674.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _679.x), vec3(CB0[17].w)) + (VARYING5.xyz * _742)) * mix(_540, _540 * _540, _617).xyz) + (CB0[10].xyz * (VARYING5.w * _742));
    vec4 _872 = vec4(_570.x, _570.y, _570.z, vec4(0.0).w);
    _872.w = VARYING2.w;
    vec3 _789 = mix(CB0[14].xyz, mix(_872.xyz, sqrt(clamp(_872.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _617).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_789.x, _789.y, _789.z, _872.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$StudsMapTexture=s0

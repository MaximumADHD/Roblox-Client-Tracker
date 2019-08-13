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
uniform samplerCube EnvironmentMapTexture;

varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec2 _973 = VARYING1.xy;
    _973.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    vec3 _610 = vec4(VARYING2.xyz * (texture2D(StudsMapTexture, _973).x * 2.0), VARYING2.w).xyz;
    vec3 _706 = vec3(CB0[15].x);
    float _808 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _752 = VARYING3.yzx - (VARYING3.yzx * _808);
    vec4 _762 = vec4(clamp(_808, 0.0, 1.0));
    vec4 _763 = mix(texture3D(LightMapTexture, _752), vec4(0.0), _762);
    vec4 _768 = mix(texture3D(LightGridSkylightTexture, _752), vec4(1.0), _762);
    vec4 _818 = texture2D(ShadowMapTexture, VARYING7.xy);
    float _831 = (1.0 - ((step(_818.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _818.y)) * _768.y;
    vec3 _629 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, VARYING5.xyz)).xyz;
    vec3 _659 = ((min(((_763.xyz * (_763.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _768.x), vec3(CB0[17].w)) + (VARYING6.xyz * _831)) * mix(mix(_610, _610 * _610, _706).xyz, mix(_629, (_629 * _629) * CB0[15].w, _706), vec3(VARYING7.w)).xyz) + (CB0[10].xyz * (VARYING6.w * _831));
    vec4 _987 = vec4(_659.x, _659.y, _659.z, vec4(0.0).w);
    _987.w = VARYING2.w;
    vec3 _898 = mix(CB0[14].xyz, mix(_987.xyz, sqrt(clamp(_987.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _706).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_898.x, _898.y, _898.z, _987.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$StudsMapTexture=s0
//$$EnvironmentMapTexture=s2

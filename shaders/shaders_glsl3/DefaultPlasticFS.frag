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

in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in float VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec2 _871 = VARYING1.xy;
    _871.y = (fract(VARYING1.y) + VARYING7) * 0.25;
    vec3 _552 = vec4(VARYING2.xyz * (texture(StudsMapTexture, _871).x * 2.0), VARYING2.w).xyz;
    vec3 _629 = vec3(CB0[15].x);
    float _731 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _675 = VARYING3.yzx - (VARYING3.yzx * _731);
    vec4 _685 = vec4(clamp(_731, 0.0, 1.0));
    vec4 _686 = mix(texture(LightMapTexture, _675), vec4(0.0), _685);
    vec4 _691 = mix(texture(LightGridSkylightTexture, _675), vec4(1.0), _685);
    vec4 _741 = texture(ShadowMapTexture, VARYING6.xy);
    float _754 = (1.0 - ((step(_741.x, VARYING6.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * _741.y)) * _691.y;
    vec3 _582 = ((min(((_686.xyz * (_686.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _691.x), vec3(CB0[17].w)) + (VARYING5.xyz * _754)) * mix(_552, _552 * _552, _629).xyz) + (CB0[10].xyz * (VARYING5.w * _754));
    vec4 _884 = vec4(_582.x, _582.y, _582.z, vec4(0.0).w);
    _884.w = VARYING2.w;
    vec3 _801 = mix(CB0[14].xyz, mix(_884.xyz, sqrt(clamp(_884.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _629).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_801.x, _801.y, _801.z, _884.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$StudsMapTexture=s0

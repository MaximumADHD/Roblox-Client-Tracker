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
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec4 _685 = texture(DiffuseMapTexture, VARYING0.xy);
    vec3 _588 = (mix(vec3(1.0), VARYING2.xyz, vec3(_685.w)) * _685.xyz).xyz;
    vec3 _693 = vec3(CB0[15].x);
    float _795 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _739 = VARYING3.yzx - (VARYING3.yzx * _795);
    vec4 _749 = vec4(clamp(_795, 0.0, 1.0));
    vec4 _750 = mix(texture(LightMapTexture, _739), vec4(0.0), _749);
    vec4 _755 = mix(texture(LightGridSkylightTexture, _739), vec4(1.0), _749);
    vec4 _805 = texture(ShadowMapTexture, VARYING6.xy);
    float _818 = (1.0 - ((step(_805.x, VARYING6.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * _805.y)) * _755.y;
    vec3 _618 = ((min(((_750.xyz * (_750.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _755.x), vec3(CB0[17].w)) + (VARYING5.xyz * _818)) * mix(_588, _588 * _588, _693).xyz) + (CB0[10].xyz * (VARYING5.w * _818));
    vec4 _947 = vec4(_618.x, _618.y, _618.z, vec4(0.0).w);
    _947.w = VARYING2.w;
    vec3 _865 = mix(CB0[14].xyz, mix(_947.xyz, sqrt(clamp(_947.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _693).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_865.x, _865.y, _865.z, _947.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3

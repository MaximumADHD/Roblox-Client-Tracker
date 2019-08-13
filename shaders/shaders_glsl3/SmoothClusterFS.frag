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
uniform sampler2DArray AlbedoMapTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec3 VARYING5;
in vec3 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec4 _696 = ((texture(AlbedoMapTexture, vec3(VARYING1.xy, VARYING2.x)).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, vec3(VARYING1.zw, VARYING2.z)).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 _700 = _696.yz - vec2(0.5);
    float _742 = _696.x;
    float _749 = _742 - _700.y;
    vec3 _615 = vec4(vec3(_749, _742, _749) + (vec3(_700.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 _768 = vec3(CB0[15].x);
    float _870 = clamp(dot(step(CB0[20].xyz, abs(VARYING4.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _814 = VARYING4.yzx - (VARYING4.yzx * _870);
    vec4 _824 = vec4(clamp(_870, 0.0, 1.0));
    vec4 _825 = mix(texture(LightMapTexture, _814), vec4(0.0), _824);
    vec4 _830 = mix(texture(LightGridSkylightTexture, _814), vec4(1.0), _824);
    vec4 _880 = texture(ShadowMapTexture, VARYING5.xy);
    vec3 _635 = (min(((_825.xyz * (_825.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _830.x), vec3(CB0[17].w)) + (VARYING6 * ((1.0 - ((step(_880.x, VARYING5.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * _880.y)) * _830.y))) * mix(_615, _615 * _615, _768).xyz;
    vec4 _1026 = vec4(_635.x, _635.y, _635.z, vec4(0.0).w);
    _1026.w = 1.0;
    vec3 _946 = mix(CB0[14].xyz, mix(_1026.xyz, sqrt(clamp(_1026.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _768).xyz, vec3(clamp(VARYING4.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_946.x, _946.y, _946.z, _1026.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0

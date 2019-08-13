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
uniform vec4 CB2[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
in vec3 VARYING3;
in vec3 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec4 _423 = texture(DiffuseMapTexture, VARYING0);
    vec4 _429 = vec4(1.0, 1.0, 1.0, _423.x);
    bvec4 _431 = bvec4(CB2[0].y > 0.5);
    vec4 _436 = VARYING1 * vec4(_431.x ? _429.x : _423.x, _431.y ? _429.y : _423.y, _431.z ? _429.z : _423.z, _431.w ? _429.w : _423.w);
    vec3 _438 = _436.xyz;
    vec3 _480 = vec3(CB0[15].x);
    float _582 = clamp(dot(step(CB0[20].xyz, abs(VARYING3 - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _526 = VARYING3.yzx - (VARYING3.yzx * _582);
    vec4 _536 = vec4(clamp(_582, 0.0, 1.0));
    vec4 _537 = mix(texture(LightMapTexture, _526), vec4(0.0), _536);
    vec4 _542 = mix(texture(LightGridSkylightTexture, _526), vec4(1.0), _536);
    vec4 _592 = texture(ShadowMapTexture, VARYING4.xy);
    vec3 _456 = mix(_438, _438 * _438, _480).xyz;
    vec3 _468 = mix(_456, (min(((_537.xyz * (_537.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _542.x), vec3(CB0[17].w)) + (VARYING2 * ((1.0 - ((step(_592.x, VARYING4.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING4.z - 0.5)), 0.0, 1.0)) * _592.y)) * _542.y))) * _456, vec3(CB2[0].z)).xyz;
    vec3 _637 = mix(_468, sqrt(clamp(_468 * CB0[15].z, vec3(0.0), vec3(1.0))), _480);
    _entryPointOutput = vec4(_637.x, _637.y, _637.z, _436.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s0

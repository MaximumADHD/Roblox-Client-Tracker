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

struct LightShadowGPUTransform
{
    mat4 transform;
};

uniform vec4 CB0[32];
uniform vec4 CB8[24];
uniform vec4 CB2[1];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec3 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 _766 = texture(DiffuseMapTexture, VARYING0);
    vec4 _772 = vec4(1.0, 1.0, 1.0, _766.x);
    bvec4 _774 = bvec4(CB2[0].y > 0.5);
    vec4 _779 = VARYING1 * vec4(_774.x ? _772.x : _766.x, _774.y ? _772.y : _766.y, _774.z ? _772.z : _766.z, _774.w ? _772.w : _766.w);
    vec3 _781 = _779.xyz;
    vec3 _851 = vec3(CB0[15].x);
    float _940 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _884 = VARYING3.yzx - (VARYING3.yzx * _940);
    vec4 _894 = vec4(clamp(_940, 0.0, 1.0));
    vec4 _895 = mix(texture(LightMapTexture, _884), vec4(0.0), _894);
    vec4 _900 = mix(texture(LightGridSkylightTexture, _884), vec4(1.0), _894);
    float _935 = _900.y;
    vec3 _1017 = VARYING4 - CB0[26].xyz;
    vec3 _1026 = VARYING4 - CB0[27].xyz;
    vec3 _1035 = VARYING4 - CB0[28].xyz;
    vec4 _1079 = vec4(VARYING4, 1.0) * mat4(CB8[((dot(_1017, _1017) < CB0[26].w) ? 0 : ((dot(_1026, _1026) < CB0[27].w) ? 1 : ((dot(_1035, _1035) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1017, _1017) < CB0[26].w) ? 0 : ((dot(_1026, _1026) < CB0[27].w) ? 1 : ((dot(_1035, _1035) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1017, _1017) < CB0[26].w) ? 0 : ((dot(_1026, _1026) < CB0[27].w) ? 1 : ((dot(_1035, _1035) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1017, _1017) < CB0[26].w) ? 0 : ((dot(_1026, _1026) < CB0[27].w) ? 1 : ((dot(_1035, _1035) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _1130 = textureLod(ShadowAtlasTexture, _1079.xy, 0.0);
    vec2 _1401 = vec2(0.0);
    _1401.x = CB0[30].z;
    vec2 _1403 = _1401;
    _1403.y = CB0[30].w;
    float _1177 = (2.0 * _1079.z) - 1.0;
    float _1182 = exp(CB0[30].z * _1177);
    float _1189 = -exp((-CB0[30].w) * _1177);
    vec2 _1146 = (_1403 * CB0[31].y) * vec2(_1182, _1189);
    vec2 _1149 = _1146 * _1146;
    float _1202 = _1130.x;
    float _1209 = max(_1130.y - (_1202 * _1202), _1149.x);
    float _1213 = _1182 - _1202;
    float _1255 = _1130.z;
    float _1262 = max(_1130.w - (_1255 * _1255), _1149.y);
    float _1266 = _1189 - _1255;
    vec3 _812 = mix(_781, _781 * _781, _851).xyz;
    vec3 _824 = mix(_812, (min(((_895.xyz * (_895.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _900.x), vec3(CB0[17].w)) + (VARYING2 * ((VARYING3.w > 0.0) ? mix(_935, mix(min((_1182 <= _1202) ? 1.0 : clamp(((_1209 / (_1209 + (_1213 * _1213))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_1189 <= _1255) ? 1.0 : clamp(((_1262 / (_1262 + (_1266 * _1266))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _935, clamp((length(VARYING4 - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0))) * _812, vec3(CB2[0].z)).xyz;
    vec3 _1333 = mix(CB0[14].xyz, mix(_824, sqrt(clamp(_824 * CB0[15].z, vec3(0.0), vec3(1.0))), _851).xyz, vec3(clamp((CB0[13].x * length(VARYING5)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_1333.x, _1333.y, _1333.z, _779.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s0

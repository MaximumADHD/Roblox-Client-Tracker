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
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec4 _904 = texture(DiffuseMapTexture, VARYING0.xy) * VARYING2;
    vec3 _908 = normalize(VARYING5.xyz);
    vec3 _919 = -CB0[11].xyz;
    vec3 _922 = _904.xyz;
    vec3 _1027 = vec3(CB0[15].x);
    float _1116 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1060 = VARYING3.yzx - (VARYING3.yzx * _1116);
    vec4 _1070 = vec4(clamp(_1116, 0.0, 1.0));
    vec4 _1071 = mix(texture(LightMapTexture, _1060), vec4(0.0), _1070);
    vec4 _1076 = mix(texture(LightGridSkylightTexture, _1060), vec4(1.0), _1070);
    float _1111 = _1076.y;
    vec3 _1193 = VARYING7.xyz - CB0[26].xyz;
    vec3 _1202 = VARYING7.xyz - CB0[27].xyz;
    vec3 _1211 = VARYING7.xyz - CB0[28].xyz;
    vec4 _1255 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(_1193, _1193) < CB0[26].w) ? 0 : ((dot(_1202, _1202) < CB0[27].w) ? 1 : ((dot(_1211, _1211) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1193, _1193) < CB0[26].w) ? 0 : ((dot(_1202, _1202) < CB0[27].w) ? 1 : ((dot(_1211, _1211) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1193, _1193) < CB0[26].w) ? 0 : ((dot(_1202, _1202) < CB0[27].w) ? 1 : ((dot(_1211, _1211) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1193, _1193) < CB0[26].w) ? 0 : ((dot(_1202, _1202) < CB0[27].w) ? 1 : ((dot(_1211, _1211) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _1306 = textureLod(ShadowAtlasTexture, _1255.xy, 0.0);
    vec2 _1619 = vec2(0.0);
    _1619.x = CB0[30].z;
    vec2 _1621 = _1619;
    _1621.y = CB0[30].w;
    float _1353 = (2.0 * _1255.z) - 1.0;
    float _1358 = exp(CB0[30].z * _1353);
    float _1365 = -exp((-CB0[30].w) * _1353);
    vec2 _1322 = (_1621 * CB0[31].y) * vec2(_1358, _1365);
    vec2 _1325 = _1322 * _1322;
    float _1378 = _1306.x;
    float _1385 = max(_1306.y - (_1378 * _1378), _1325.x);
    float _1389 = _1358 - _1378;
    float _1431 = _1306.z;
    float _1438 = max(_1306.w - (_1431 * _1431), _1325.y);
    float _1442 = _1365 - _1431;
    float _1238 = (dot(_908, _919) > 0.0) ? mix(_1111, mix(min((_1358 <= _1378) ? 1.0 : clamp(((_1385 / (_1385 + (_1389 * _1389))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_1365 <= _1431) ? 1.0 : clamp(((_1438 / (_1438 + (_1442 * _1442))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1111, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _980 = ((min(((_1071.xyz * (_1071.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1076.x), vec3(CB0[17].w)) + (VARYING6.xyz * _1238)) * mix(_922, _922 * _922, _1027).xyz) + (CB0[10].xyz * ((VARYING6.w * _1238) * pow(clamp(dot(_908, normalize(_919 + normalize(VARYING4.xyz))), 0.0, 1.0), VARYING5.w)));
    vec4 _1640 = vec4(_980.x, _980.y, _980.z, vec4(0.0).w);
    _1640.w = _904.w;
    vec3 _1538 = mix(CB0[14].xyz, mix(_1640.xyz, sqrt(clamp(_1640.xyz * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _1027).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_1538.x, _1538.y, _1538.z, _1640.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3

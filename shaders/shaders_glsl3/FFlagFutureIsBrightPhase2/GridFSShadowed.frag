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

struct GridParam
{
    vec4 GridScale;
};

uniform vec4 CB0[32];
uniform vec4 CB8[24];
uniform vec4 CB3[1];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 _995 = (CB0[7].xyz - VARYING4.xyz) * CB3[0].x;
    vec3 _997 = abs(VARYING5.xyz);
    float _1001 = _997.x;
    float _1003 = _997.y;
    float _1008 = _997.z;
    vec2 _1626;
    if ((_1001 >= _1003) && (_1001 >= _1008))
    {
        _1626 = _995.yz;
    }
    else
    {
        vec2 _1627;
        if ((_1003 >= _1001) && (_1003 >= _1008))
        {
            _1627 = _995.xz;
        }
        else
        {
            _1627 = _995.xy;
        }
        _1626 = _1627;
    }
    vec4 _892 = texture(DiffuseMapTexture, _1626) * VARYING2;
    vec3 _909 = _892.xyz;
    vec3 _1041 = vec3(CB0[15].x);
    float _1130 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _1074 = VARYING3.yzx - (VARYING3.yzx * _1130);
    vec4 _1084 = vec4(clamp(_1130, 0.0, 1.0));
    vec4 _1085 = mix(texture(LightMapTexture, _1074), vec4(0.0), _1084);
    vec4 _1090 = mix(texture(LightGridSkylightTexture, _1074), vec4(1.0), _1084);
    float _1125 = _1090.y;
    vec3 _1207 = VARYING7.xyz - CB0[26].xyz;
    vec3 _1216 = VARYING7.xyz - CB0[27].xyz;
    vec3 _1225 = VARYING7.xyz - CB0[28].xyz;
    vec4 _1269 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(_1207, _1207) < CB0[26].w) ? 0 : ((dot(_1216, _1216) < CB0[27].w) ? 1 : ((dot(_1225, _1225) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(_1207, _1207) < CB0[26].w) ? 0 : ((dot(_1216, _1216) < CB0[27].w) ? 1 : ((dot(_1225, _1225) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(_1207, _1207) < CB0[26].w) ? 0 : ((dot(_1216, _1216) < CB0[27].w) ? 1 : ((dot(_1225, _1225) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(_1207, _1207) < CB0[26].w) ? 0 : ((dot(_1216, _1216) < CB0[27].w) ? 1 : ((dot(_1225, _1225) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 _1320 = textureLod(ShadowAtlasTexture, _1269.xy, 0.0);
    vec2 _1604 = vec2(0.0);
    _1604.x = CB0[30].z;
    vec2 _1606 = _1604;
    _1606.y = CB0[30].w;
    float _1367 = (2.0 * _1269.z) - 1.0;
    float _1372 = exp(CB0[30].z * _1367);
    float _1379 = -exp((-CB0[30].w) * _1367);
    vec2 _1336 = (_1606 * CB0[31].y) * vec2(_1372, _1379);
    vec2 _1339 = _1336 * _1336;
    float _1392 = _1320.x;
    float _1399 = max(_1320.y - (_1392 * _1392), _1339.x);
    float _1403 = _1372 - _1392;
    float _1445 = _1320.z;
    float _1452 = max(_1320.w - (_1445 * _1445), _1339.y);
    float _1456 = _1379 - _1445;
    float _1252 = (dot(VARYING5.xyz, -CB0[11].xyz) > 0.0) ? mix(_1125, mix(min((_1372 <= _1392) ? 1.0 : clamp(((_1399 / (_1399 + (_1403 * _1403))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (_1379 <= _1445) ? 1.0 : clamp(((_1452 / (_1452 + (_1456 * _1456))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), _1125, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 _948 = ((min(((_1085.xyz * (_1085.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _1090.x), vec3(CB0[17].w)) + (VARYING6.xyz * _1252)) * mix(_909, _909 * _909, _1041).xyz) + (CB0[10].xyz * (VARYING6.w * _1252));
    vec4 _1625 = vec4(_948.x, _948.y, _948.z, vec4(0.0).w);
    _1625.w = _892.w;
    vec3 _1517 = mix(CB0[14].xyz, mix(_1625.xyz, sqrt(clamp(_1625.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1041).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_1517.x, _1517.y, _1517.z, _1625.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3

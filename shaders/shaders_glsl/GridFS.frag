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

struct GridParam
{
    vec4 GridScale;
};

uniform vec4 CB0[32];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec3 _668 = (CB0[7].xyz - VARYING4.xyz) * CB3[0].x;
    vec3 _670 = abs(VARYING5.xyz);
    float _674 = _670.x;
    float _676 = _670.y;
    float _681 = _670.z;
    vec2 _976;
    if ((_674 >= _676) && (_674 >= _681))
    {
        _976 = _668.yz;
    }
    else
    {
        vec2 _977;
        if ((_676 >= _674) && (_676 >= _681))
        {
            _977 = _668.xz;
        }
        else
        {
            _977 = _668.xy;
        }
        _976 = _977;
    }
    vec4 _579 = texture2D(DiffuseMapTexture, _976) * VARYING2;
    vec3 _591 = _579.xyz;
    vec3 _714 = vec3(CB0[15].x);
    float _816 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _760 = VARYING3.yzx - (VARYING3.yzx * _816);
    vec4 _770 = vec4(clamp(_816, 0.0, 1.0));
    vec4 _771 = mix(texture3D(LightMapTexture, _760), vec4(0.0), _770);
    vec4 _776 = mix(texture3D(LightGridSkylightTexture, _760), vec4(1.0), _770);
    vec4 _826 = texture2D(ShadowMapTexture, VARYING7.xy);
    float _839 = (1.0 - ((step(_826.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _826.y)) * _776.y;
    vec3 _621 = ((min(((_771.xyz * (_771.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _776.x), vec3(CB0[17].w)) + (VARYING6.xyz * _839)) * mix(_591, _591 * _591, _714).xyz) + (CB0[10].xyz * (VARYING6.w * _839));
    vec4 _975 = vec4(_621.x, _621.y, _621.z, vec4(0.0).w);
    _975.w = _579.w;
    vec3 _886 = mix(CB0[14].xyz, mix(_975.xyz, sqrt(clamp(_975.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _714).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(_886.x, _886.y, _886.z, _975.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3

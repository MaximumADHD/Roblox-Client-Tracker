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

in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 _680 = (CB0[7].xyz - VARYING4.xyz) * CB3[0].x;
    vec3 _682 = abs(VARYING5.xyz);
    float _686 = _682.x;
    float _688 = _682.y;
    float _693 = _682.z;
    vec2 _988;
    if ((_686 >= _688) && (_686 >= _693))
    {
        _988 = _680.yz;
    }
    else
    {
        vec2 _989;
        if ((_688 >= _686) && (_688 >= _693))
        {
            _989 = _680.xz;
        }
        else
        {
            _989 = _680.xy;
        }
        _988 = _989;
    }
    vec4 _591 = texture(DiffuseMapTexture, _988) * VARYING2;
    vec3 _603 = _591.xyz;
    vec3 _726 = vec3(CB0[15].x);
    float _828 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _772 = VARYING3.yzx - (VARYING3.yzx * _828);
    vec4 _782 = vec4(clamp(_828, 0.0, 1.0));
    vec4 _783 = mix(texture(LightMapTexture, _772), vec4(0.0), _782);
    vec4 _788 = mix(texture(LightGridSkylightTexture, _772), vec4(1.0), _782);
    vec4 _838 = texture(ShadowMapTexture, VARYING7.xy);
    float _851 = (1.0 - ((step(_838.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _838.y)) * _788.y;
    vec3 _633 = ((min(((_783.xyz * (_783.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _788.x), vec3(CB0[17].w)) + (VARYING6.xyz * _851)) * mix(_603, _603 * _603, _726).xyz) + (CB0[10].xyz * (VARYING6.w * _851));
    vec4 _987 = vec4(_633.x, _633.y, _633.z, vec4(0.0).w);
    _987.w = _591.w;
    vec3 _898 = mix(CB0[14].xyz, mix(_987.xyz, sqrt(clamp(_987.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _726).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_898.x, _898.y, _898.z, _987.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3

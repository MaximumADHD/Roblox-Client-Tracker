#version 150

struct Params
{
    vec4 TextureSize;
    vec4 Params1;
    vec4 Params2;
    vec4 Params3;
    vec4 Params4;
    vec4 Params5;
    vec4 Params6;
    vec4 Bloom;
};

uniform vec4 CB1[8];
uniform sampler2D mapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 _194 = texture(mapTexture, VARYING0);
    float _195 = _194.y;
    float _261;
    float _262;
    _262 = 0.0;
    _261 = 0.0;
    for (int _260 = -3; _260 <= 3; )
    {
        float _208 = float(_260);
        vec4 _222 = texture(mapTexture, VARYING0 + (vec2(0.0, CB1[0].w) * _208));
        float _232 = exp(((-_208) * _208) * 0.22222222387790679931640625) * float(abs(_222.y - _195) < clamp(_195 * 0.06399999558925628662109375, 7.999999797903001308441162109375e-05, 0.008000000379979610443115234375));
        _262 += _232;
        _261 += (_222.x * _232);
        _260++;
        continue;
    }
    _entryPointOutput = vec4(_261 / _262, _195, 0.0, 1.0);
}

//$$mapTexture=s2

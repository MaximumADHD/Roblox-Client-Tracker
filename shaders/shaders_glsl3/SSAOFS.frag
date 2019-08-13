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
uniform sampler2D depthBufferTexture;
uniform sampler2D randMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 _357 = textureLod(depthBufferTexture, vec4(VARYING0, 0.0, 0.0).xy, 0.0);
    float _358 = _357.x;
    vec4 _372 = (texture(randMapTexture, fract((VARYING0 * CB1[0].xy) * vec2(0.25))) * 2.0) - vec4(1.0);
    float _374 = _372.y;
    vec2 _405 = clamp(CB1[1].xy * (0.0040000001899898052215576171875 / _358), CB1[0].zw * 10.0, CB1[0].zw * 100.0);
    float _415 = log2(0.100000001490116119384765625 * length(_405 * CB1[0].xy)) - 2.0;
    float _584;
    float _585;
    _585 = 2.0;
    _584 = 1.0;
    for (int _583 = 0; _583 < 8; )
    {
        float _424 = float(_583);
        float _545 = _424 + 1.0;
        float _546 = _545 * 0.100000001490116119384765625;
        float _553 = _424 * 0.78539812564849853515625;
        float _438 = _545 * 0.010000000707805156707763671875;
        vec2 _443 = ((vec2(cos(_553), sin(_553)) * _546) * mat2(vec2(_374, _372.x), vec2(-_372.x, _374))) * _405;
        vec2 _576 = vec2(0.0);
        _576.x = textureLod(depthBufferTexture, vec4(VARYING0 + _443, 0.0, _415).xy, _415).x;
        vec2 _578 = _576;
        _578.y = textureLod(depthBufferTexture, vec4(VARYING0 - _443, 0.0, _415).xy, _415).x;
        vec2 _498 = ((_578 - vec2(_358)) * (124.99999237060546875 / sqrt(1.0 - (_546 * _546)))) + vec2(0.5);
        float _500 = _498.x;
        float _502 = _498.y;
        float _505 = clamp(min(_500, _502) + 0.75, 0.0, 1.0);
        _585 += (2.0 * _505);
        _584 += ((clamp(_500 + _438, 0.0, 1.0) + clamp(_502 + _438, 0.0, 1.0)) * _505);
        _583++;
        continue;
    }
    _entryPointOutput = vec4((_358 > 0.9900000095367431640625) ? 1.0 : pow(clamp((_584 / _585) * 2.0, 0.0, 1.0), 1.0), _358, 0.0, 1.0);
}

//$$depthBufferTexture=s0
//$$randMapTexture=s1

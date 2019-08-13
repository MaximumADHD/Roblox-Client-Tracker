#version 110

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
uniform sampler2D Texture0Texture;

varying vec4 VARYING1;
varying vec4 VARYING2;

void main()
{
    vec4 _151 = texture2D(Texture0Texture, VARYING1.xy);
    float _173 = _151.x;
    vec4 _157 = texture2D(Texture0Texture, VARYING2.zw);
    float _208 = _157.x;
    gl_FragData[0] = ((vec4(_173, _151.yz, 1.0) * max(1.0 - _151.w, CB1[7].x * pow(clamp(max(max(_173, _151.y), _151.z), 0.0, 1.0), CB1[7].y))) + (vec4(_208, _157.yz, 1.0) * max(1.0 - _157.w, CB1[7].x * pow(clamp(max(max(_208, _157.y), _157.z), 0.0, 1.0), CB1[7].y)))) * 0.5;
}

//$$Texture0Texture=s0

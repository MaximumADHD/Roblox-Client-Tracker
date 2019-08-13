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
in vec4 POSITION;
out vec2 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;

void main()
{
    vec2 _204 = (POSITION.xy * 0.5) + vec2(0.5);
    vec2 _165 = CB1[0].zw * 2.0;
    vec2 _169 = vec2(_165.x, 0.0);
    vec2 _170 = _204 + _169;
    vec2 _178 = _204 - _169;
    vec2 _185 = vec2(0.0, _165.y);
    vec2 _186 = _204 + _185;
    vec2 _194 = _204 - _185;
    gl_Position = POSITION;
    VARYING0 = _204;
    VARYING1 = vec4(_170.x, _170.y, _178.x, _178.y);
    VARYING2 = vec4(_186.x, _186.y, _194.x, _194.y);
}


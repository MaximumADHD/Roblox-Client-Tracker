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
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 _188 = vec4(2.0, 2.0, -2.0, 0.0) * CB1[0].zwzw;
    vec2 _192 = _188.xy;
    vec2 _198 = _188.wy;
    vec2 _207 = _188.zy;
    _entryPointOutput = ((((((((texture(Texture0Texture, VARYING0 - _192) + (texture(Texture0Texture, VARYING0 - _198) * 2.0)) + texture(Texture0Texture, VARYING0 - _207)) + (texture(Texture0Texture, VARYING0 + _188.zw) * 2.0)) + (texture(Texture0Texture, VARYING0) * 4.0)) + (texture(Texture0Texture, VARYING0 + _188.xw) * 2.0)) + texture(Texture0Texture, VARYING0 + _207)) + (texture(Texture0Texture, VARYING0 + _198) * 2.0)) + texture(Texture0Texture, VARYING0 + _192)) * (0.0625 * CB1[2].x);
}

//$$Texture0Texture=s0

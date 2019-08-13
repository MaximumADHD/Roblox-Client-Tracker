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
    vec4 f0 = vec4(2.0, 2.0, -2.0, 0.0) * CB1[0].zwzw;
    vec2 f1 = f0.xy;
    vec2 f2 = f0.wy;
    vec2 f3 = f0.zy;
    _entryPointOutput = ((((((((texture(Texture0Texture, VARYING0 - f1) + (texture(Texture0Texture, VARYING0 - f2) * 2.0)) + texture(Texture0Texture, VARYING0 - f3)) + (texture(Texture0Texture, VARYING0 + f0.zw) * 2.0)) + (texture(Texture0Texture, VARYING0) * 4.0)) + (texture(Texture0Texture, VARYING0 + f0.xw) * 2.0)) + texture(Texture0Texture, VARYING0 + f3)) + (texture(Texture0Texture, VARYING0 + f2) * 2.0)) + texture(Texture0Texture, VARYING0 + f1)) * (0.0625 * CB1[2].x);
}

//$$Texture0Texture=s0

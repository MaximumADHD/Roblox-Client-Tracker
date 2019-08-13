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
    _entryPointOutput = ((((((texture(Texture0Texture, VARYING0) * CB1[3].x) + (texture(Texture0Texture, (CB1[1].xy * vec2(0.0, -CB1[5].w)) + VARYING0) * CB1[3].w)) + (texture(Texture0Texture, (CB1[1].xy * vec2(0.0, -CB1[5].z)) + VARYING0) * CB1[3].z)) + (texture(Texture0Texture, (CB1[1].xy * vec2(0.0, -CB1[5].y)) + VARYING0) * CB1[3].y)) + (texture(Texture0Texture, (CB1[1].xy * vec2(0.0, CB1[5].y)) + VARYING0) * CB1[3].y)) + (texture(Texture0Texture, (CB1[1].xy * vec2(0.0, CB1[5].z)) + VARYING0) * CB1[3].z)) + (texture(Texture0Texture, (CB1[1].xy * vec2(0.0, CB1[5].w)) + VARYING0) * CB1[3].w);
}

//$$Texture0Texture=s0

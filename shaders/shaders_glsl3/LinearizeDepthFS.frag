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
    float _168 = (2.0 * texture(Texture0Texture, VARYING0).x) - 1.0;
    float _175 = CB1[1].y / (_168 + CB1[1].x);
    vec2 _178 = VARYING0 - vec2(0.5);
    _entryPointOutput = vec4((_168 <= (-1.0)) ? 1.0 : min(_175 * 0.00200000009499490261077880859375, 0.99800002574920654296875), clamp(1.0 - ((CB1[1].z - (sqrt((dot(_178, _178) * 4.0) + 1.0) * _175)) * CB1[1].w), 0.0, 1.0), 0.0, 0.0);
}

//$$Texture0Texture=s0

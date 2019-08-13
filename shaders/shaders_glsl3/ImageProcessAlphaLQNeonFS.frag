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
    vec4 _176 = texture(Texture0Texture, VARYING0);
    float _199 = _176.w;
    vec3 _182 = (_176.xyz * (CB1[4].y + (_199 * (1.0 - CB1[4].y)))).xyz;
    _entryPointOutput = vec4(dot(_182, CB1[1].xyz) + CB1[1].w, dot(_182, CB1[2].xyz) + CB1[2].w, dot(_182, CB1[3].xyz) + CB1[3].w, _199);
}

//$$Texture0Texture=s0

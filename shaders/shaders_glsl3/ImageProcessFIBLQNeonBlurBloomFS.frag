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
uniform sampler2D Texture3Texture;
uniform sampler2D Texture1Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 _334 = texture(Texture0Texture, VARYING0);
    vec3 _335 = _334.xyz;
    vec3 _385 = texture(Texture3Texture, VARYING0).xyz + ((_335 * ((vec3(max(max(max(_334.x, _334.y), _334.z) - CB1[7].y, 0.0)) * CB1[7].x) * 3.2999999523162841796875)) * 2.0);
    vec3 _348 = texture(Texture1Texture, VARYING0).xyz;
    vec3 _355 = mix(((_335 * _335) * 4.0) + ((_385 * _385) * 4.0), (_348 * _348) * 4.0, vec3(CB1[4].x));
    vec3 _470 = _355 * CB1[5].x;
    vec3 _488 = ((_355 * (_470 + vec3(CB1[5].y))) / ((_355 * (_470 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    _entryPointOutput = vec4(dot(_488, CB1[1].xyz) + CB1[1].w, dot(_488, CB1[2].xyz) + CB1[2].w, dot(_488, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture3Texture=s3
//$$Texture1Texture=s1

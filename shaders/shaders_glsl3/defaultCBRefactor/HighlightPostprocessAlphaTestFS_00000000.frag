#version 150

uniform vec4 CB13[16];
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    if (texture(DiffuseMapTexture, VARYING0).w < 0.2520000040531158447265625)
    {
        discard;
    }
    _entryPointOutput = vec4(CB13[0].x, 0.0, 0.0, 1.0);
}

//$$DiffuseMapTexture=s3

#version 110

uniform vec4 CB13[16];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;

void main()
{
    if (texture2D(DiffuseMapTexture, VARYING0).w < 0.2520000040531158447265625)
    {
        discard;
    }
    gl_FragData[0] = CB13[0];
}

//$$DiffuseMapTexture=s3

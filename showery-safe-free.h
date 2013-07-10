#pragma once

template< typename T_Delete >
inline void SafeDelete( T_Delete **pp )
{
    if ( *pp!=NULL )
        delete ( *pp );
    *pp = NULL;
}

template< typename T_Delete >
inline void SafeDeleteArray( T_Delete **pp)
{
    if ( *pp!=NULL )
        delete []( *pp );
    *pp = NULL;
}

template< typename T_Release >
inline void SafeRelease( T_Release **pp )
{
    if ( *pp!=NULL )
    {
        ( *pp )->Release();
        *pp = NULL;
    }
}
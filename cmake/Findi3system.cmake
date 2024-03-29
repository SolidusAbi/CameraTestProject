# - Try to find i3system
# Once done this will define
#
#  I3SYSTEM_FOUND - system has i3system
#  I3SYSTEM_INCLUDE_DIR - the i3system include directory
#  I3SYSTEM_LIBRARIY - Link these to use i3system
#  I3SYSTEM_DEFINITIONS - Compiler switches required for using i3system

IF (CMAKE_HOST_WIN32)
    message("OLA KE ASE")
endif(CMAKE_HOST_WIN32)


if (I3SYSTEM_LIBRARIY AND I3SYSTEM_INCLUDE_DIR)
# in cache already
set(I3SYSTEM_FOUND TRUE)
else (I3SYSTEM_LIBRARIY AND I3SYSTEM_INCLUDE_DIR)
    find_path(I3SYSTEM_INCLUDE_DIR
        NAMES
            i3system_TE.h 
            i3system_improc.h
        PATHS
            /usr/local/include
            /usr/include/
                PATH_SUFFIXES
                    i3system
    )
    
    set(I3SYSTEM_LIBDIR /usr/local/lib /usr/lib)
    
    if (NOT (I3SYSTEM_USB_LIBRARY))
        find_library(I3SYSTEM_USB_LIBRARY
            NAMES
                i3system_usb_64 libi3system_usb_64 i3system_usb
            PATHS
                ${I3SYSTEM_LIBDIR}
        )
    endif (NOT (I3SYSTEM_USB_LIBRARY))
    
    if (NOT (I3SYSTEM_TE_LIBRARY))
        find_library(I3SYSTEM_TE_LIBRARY
            NAMES
                i3system_te_64 libi3system_te_64 i3system_te
            PATHS
                ${I3SYSTEM_LIBDIR}
        )
    endif (NOT (I3SYSTEM_TE_LIBRARY))
    
    if (NOT (I3SYSTEM_IMGPROC_LIBRARY))
        find_library(I3SYSTEM_IMGPROC_LIBRARY
            NAMES
                i3system_imgproc_64 libi3system_imgproc_64 i3system_imgproc
            PATHS
                ${I3SYSTEM_LIBDIR}
        )
    endif (NOT (I3SYSTEM_IMGPROC_LIBRARY))

    set (I3SYSTEM_INCLUDE_DIR
        ${I3SYSTEM_INCLUDE_DIR}
    )
    
    set (I3SYSTEM_LIBRARIY
        ${I3SYSTEM_USB_LIBRARY}
        ${I3SYSTEM_TE_LIBRARY}
        ${I3SYSTEM_IMGPROC_LIBRARY}
    )
    
    if (I3SYSTEM_INCLUDE_DIR AND I3SYSTEM_LIBRARIY)
        set(I3SYSTEM_FOUND TRUE)
    endif (I3SYSTEM_INCLUDE_DIR AND I3SYSTEM_LIBRARIY)
    
    if (I3SYSTEM_FOUND)
        if (NOT i3system_FIND_QUIETLY)
            message(STATUS "Found i3system:")
            message(STATUS " - Includes: ${I3SYSTEM_INCLUDE_DIR}")
            message(STATUS " - Libraries: ${I3SYSTEM_LIBRARIY}")
        endif (NOT i3system_FIND_QUIETLY)
    else (I3SYSTEM_FOUND)
        if (i3system_FIND_REQUIRED)
            message(FATAL_ERROR "Could not find i3system")
        endif (i3system_FIND_REQUIRED)
    endif (I3SYSTEM_FOUND)

endif (I3SYSTEM_LIBRARIY AND I3SYSTEM_INCLUDE_DIR)

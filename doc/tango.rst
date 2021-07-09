.. _lima-tango-marccd:

Marccd Tango device
=====================

This is the reference documentation of the Marccd Tango device.

you can also find some useful information about the camera models/prerequisite/installation/configuration/compilation in the :ref:`Marccd camera plugin <camera-marccd>` section.

Properties
----------

======================== =============== ================================= =====================================
Property name	         Mandatory	 Default value	                   Description
======================== =============== ================================= =====================================
camera_ip                Yes             marccd1                           The camera hostname or ip address
port_number              Yes             2222                              The Socket port number
image_path               Yes             /buffer/rayonix                   The temporary image storage directory
======================== =============== ================================= =====================================


Attributes
----------

========================== ======= ============ ===========================================================
Attribute name             RW      Type         Description
========================== ======= ============ ===========================================================
source_beam_x              rw      DevFloat     Information saved with the image (.mccd format)
source_beam_y              rw      DevFloat     "    
source_distance            rw      DevFloat     "
source_wavelength          rw      DevFloat     "
header_beam_x              ro      DevFloat     "
header_beam_y              ro      DevFloat     "
header_distance            ro      DevFloat     "
header_pixelsize_x         ro      DevFloat     "
header_pixelsize_y         ro      DevFloat     "
header_integration_time    ro      DevFloat     "
header_exposure_time       ro      DevFloat     "
header_readout_time        ro      DevFloat     "
header_wavelength          ro      DevFloat     "
header_acquire_timestamp   ro      DevFloat     "
header_header_timestamp    ro      DevFloat     "
header_save_timestamp      ro      DevFloat     "
header_mean_bias           ro      DevFloat     "
header_photons_per_100adu  ro      DevFloat     "
header_mean                ro      DevFloat     "
header_rms                 ro      DevFloat     "
header_temperature         ro      DevFloat[9]  "
header_pressure            ro      DevFloat[9]  " 
========================== ======= ============ ===========================================================

Commands
--------

=======================	=============== =======================	===========================================
Command name		Arg. in		Arg. out		Description
=======================	=============== =======================	===========================================
Init			DevVoid 	DevVoid			Do not use
State			DevVoid		DevLong			Return the device state
Status			DevVoid		DevString		Return the device state as a string
takeBackgroundFrame     DevVoid         DevVoid                 Take a new background image for the correction
saveBG                  DevVoid         DevVoid                 Save the last background image
=======================	=============== =======================	===========================================



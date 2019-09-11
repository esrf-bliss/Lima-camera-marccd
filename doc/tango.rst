.. _lima-tango-marccd:

Basler Tango device
=====================

This is the reference documentation of the Basler Tango device.

you can also find some useful information about the camera models/prerequisite/installation/configuration/compilation in the :ref:`Marccd camera plugin <camera-marccd>` section.

Properties
----------

======================== =============== ================================= =====================================
Property name	         Mandatory	 Default value	                   Description
======================== =============== ================================= =====================================
camera_ip                Yes             n/a                               The camera hostname or ip address
port_number              Yes             n/a                               Socket port number
image_path               Yes             n/a                               The inter packet delay
======================== =============== ================================= =====================================


Attributes
----------

======================== ======= ============ ===========================================================
Attribute name           RW      Type         Description
======================== ======= ============ ===========================================================
source_beam_x            rw      DevFloat     .
source_beam_y            rw      DevFloat     .   
source_distance          rw      DevFloat     .
source_wavelength        rw      DevFloat     .
header_beam_x            ro      DevFloat     .
header_beam_y            ro      DevFloat     .
header_distance          ro      DevFloat     .
header_pixelsize_x       ro      DevFloat     .
header_pixelsize_y       ro      DevFloat     .
heaer_integration_time   ro      DevFloat     .
header_exposure_time     ro      DevFloat     .
header_readout_time      ro      DevFloat     .
header_wavelength        ro      DevFloat     .
header_acquire_timestamp ro      DevFloat     .
header_header_timestamp  ro      DevFloat     .
header_save_timestamp    ro      DevFloat     .
header_mean_bias         ro      DevFloat     .
header_mean              ro      DevFloat     .
header_rms               ro      DevFloat     .
header_temperature       ro      DevFloat[9]  .
header_pressure          ro      DevFloat[9]  . 
======================== ======= ============ ===========================================================

Commands
--------

=======================	=============== =======================	===========================================
Command name		Arg. in		Arg. out		Description
=======================	=============== =======================	===========================================
Init			DevVoid 	DevVoid			Do not use
State			DevVoid		DevLong			Return the device state
Status			DevVoid		DevString		Return the device state as a string
=======================	=============== =======================	===========================================



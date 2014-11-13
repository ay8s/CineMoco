<<<<<<< HEAD
@set DIRVERNAME=giveio

@loaddrv status %DIRVERNAME%
@if errorlevel 1 goto error

@goto exit

:error
@echo ERROR: Status querry for %DIRVERNAME% failed

:exit

=======
@set DIRVERNAME=giveio

@loaddrv status %DIRVERNAME%
@if errorlevel 1 goto error

@goto exit

:error
@echo ERROR: Status querry for %DIRVERNAME% failed

:exit

>>>>>>> ac6d7e90a2ce07437d1509844ab15219314d6606

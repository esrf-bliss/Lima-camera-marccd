namespace Marccd
{
//--------------------------------------------------------------------
// \class Camera
// \brief object controlling the marccd detector through a socket
//--------------------------------------------------------------------

    class Camera /NoDefaultCtors/
    {
%TypeHeaderCode
#include <MarccdCamera.h>
%End

    public:

    enum Status {
                    Ready,
                    Exposure,
                    Readout,
                    Latency,
                    Config,
                    Fault,
                    Unknown
                };

    Camera(const std::string& camera_ip,
           unsigned int port_number,
           const std::string& img_path);
    ~Camera();

    void start();
    void stop();

    // -- detector info
    void getImageSize(Size& size /Out/);
    //void setPixelDepth(ImageType pixel_depth);
    //void getPixelDepth(ImageType& pixel_depth /Out/);
    void getPixelSize(double& x_size /Out/,double& y_size /Out/);
    void getImageType(ImageType& type /Out/);

    void getDetectorType(std::string& type /Out/);
    void getDetectorModel(std::string& model /Out/);

    //- Sync
    void setTrigMode(TrigMode  mode);
    void getTrigMode(TrigMode& mode /Out/);

    void setExpTime(double  exp_time);
    void getExpTime(double& exp_time /Out/);

    void setLatTime(double  lat_time);
    void getLatTime(double& lat_time /Out/);

    void setNbFrames(int  nb_frames);
    void getNbFrames(int& nb_frames /Out/);

    void getStatus(Marccd::Camera::Status& status /Out/);

    void setBinning(const Bin&);
    void getBinning(Bin& /Out/);
    void checkBin(Bin& /In,Out/);


    void  setImagePath(const std::string& path);
    const std::string&  getImagePath();

    //const std::string& getDirectoryWatcherPath();

    void setImageFileName(const std::string& imgName);
    const std::string& getImageFileName();

    void setImageIndex(int newImgIdx);
    int getImageIndex();
    int getFirstImage() ;

    void setBeamX(float);
    void setBeamY(float);
    void setDistance(float);
    void setWavelength(float);
    float getBeamX();
    float getBeamY();
    float getDistance();
    float getWavelength();

    private:

    Camera(const Marccd::Camera&);

    };

};

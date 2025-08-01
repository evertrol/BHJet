#pragma once

#include "Particles.hpp"

namespace kariba {

//! Class for kappa distribution of particles, inherited from the generic
//! Particles class in Particles.hh
class Kappa : public Particles {
  protected:
    double theta;
    double kappa, knorm;
    double pmin, pmax;

  public:
    Kappa(size_t size);

    void set_p(double ucom, double bfield, double betaeff, double r, double fsc);
    void set_p(double max);
    void set_ndens();
    void set_kappa(double k);
    void set_temp_kev(double T);
    void set_norm(double n);

    friend double norm_kappa_int(double x, void *p);
    friend double injection_kappa_int(double x, void *p);

    void cooling_steadystate(double ucom, double n0, double bfield, double r, double gshift);
    double max_p(double ucom, double bfield, double betaeff, double r, double fsc);

    void test();
};

class Kappa2 : public Kappa {
    void set_p(double ucom, double bfield, double betaeff, double r, double fsc);
    void set_p(double max);
};

}    // namespace kariba

// PID - Control 



// ******************** Predeclare PID_Control Type ********************
typedef struct PIDContr PIDContr_t;

struct PIDContr
{
	float KP;				// Proportional Coefficient eg [steps/phi]
	float KI;				// Integral Coeff.
	float KD;				// Differential Coeff
	float ISUM;				// Integral Sum
	PIDContr_t* (*get)(PIDContr_t*);		// get PID Referenze
	void (*set)(PIDContr_t*, PIDContr_t*);	// Copy PID Parameter
	void (*init)(PIDContr_t*, float, float, float);  // Initialize PID with Parameters KP KI KD
	float (*run)(PIDContr_t*, float);   // run PID Control with in: difference end out: result
};

/**
 * get the PID Coeffizent
 * @param PIDContr_t* PID parameters
 * @returns PIDCOntr_t* - the stepper with the motor parameters
 */

PIDContr_t* getPID(PIDContr_t* PIDContr)
{
	return PIDContr;
};

void setPID(PIDContr_t* Source, PIDContr_t* Desti)
{
	Desti->KP = Source->KP;
	Desti->KI = Source->KI;
	if (Desti->KI == 0)	{Desti-> ISUM = 0;	}
	Desti->KD = Source->KD;
}



void initPID(PIDContr_t* PIDParam, float KP, float KI, float KD)
{
	PIDParam->ISUM = 0;
	PIDParam->KP = KP;
	PIDParam->KI = KI;
	PIDParam->KD = KD;
};


float runPID(PIDContr_t* PID, float Diff)
{
return PID->KP;
};



/** Example main used with PID_Regler
 *
 *
 float PID_PosOut, PID_VeloOut;
 int main() {
 	struct PIDRegler PID_Pos, PID_Velo;
 	const uint8_t iHold = 5;

	// PID_Pos.init(... 	KP, KI, KD)
 	PID_Init(&PID_Pos, 0.5,    0, 0.2);
	PID_Init(&PID_Velo, 0.1, 0.2, 0.1);

	PID_PosOut= PID.run(PID_Pos, ePos);

   
    StepperSetPos(StepL, PID_PosOut);
	
	
    //  copy ot Parameter KP,KI,KD from PID_Pos to PID_new
	struct PIDRegler PID_new;
    PID.copy(&PID_Pos, &PID_new);


**/


// define prototype structure for the PIDContr
const PIDContr_t PID = {
	.KP =0,
	.KI = 0,
	.KD = 0,
	.get = getPID,
	.set = setPID,
	.init = initPID,
	.run = runPID,
};


struct LPFilter
{

};

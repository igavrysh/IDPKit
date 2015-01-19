//
//  IDPSpecSetup.h
//  iOS
//
//  Created by Oleksa Korin on 19/1/15.
//  Copyright (c) 2015 IDAP Group. All rights reserved.
//

// Set this value to 1 to enable multithreading tests
#define IDPMultithreadedSpecTestEnabled 1

// Set this value to 1 to enable thorough multithreading tests with a lot of iterations
#define IDPLongMultithreadedSpecTest    1

#if IDPMultithreadedSpecTestEnabled == 1 && IDPLongMultithreadedSpecTest == 1
    static const NSUInteger IDPMultithreadedSpecIterationCount     = 1000;
    static const NSUInteger IDPMultithreadedWaitTime               = 30;
#elif IDPMultithreadedSpecTestEnabled == 1 && IDPLongMultithreadedSpecTest == 0
    static const NSUInteger IDPMultithreadedSpecIterationCount     = 10;
    static const NSUInteger IDPMultithreadedWaitTime               = 1;
#endif

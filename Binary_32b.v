module binary32b(A, B, P);
    input [31:0] A,B;
    output wire [63:0] P;
    wire [3:0] Carry;

wire [3:0] H11, H12, H13, H14, H15, H16, H17, H18,    H21, H22, H23, H24, H25, H26, H27, H28, 
           H31, H32, H33, H34, H35, H36, H37, H38,    H41, H42, H43, H44, H45, H46, H47, H48, 
           H51, H52, H53, H54, H55, H56, H57, H58,    H61, H62, H63, H64, H65, H66, H67, H68, 
           H71, H72, H73, H74, H75, H76, H77, H78,    H81, H82, H83, H84, H85, H86, H87, H88; 
         
wire [3:0] L11, L12, L13, L14, L15, L16, L17, L18,    L21, L22, L23, L24, L25, L26, L27, L28, 
           L31, L32, L33, L34, L35, L36, L37, L38,    L41, L42, L43, L44, L45, L46, L47, L48, 
           L51, L52, L53, L54, L55, L56, L57, L58,    L61, L62, L63, L64, L65, L66, L67, L68, 
           L71, L72, L73, L74, L75, L76, L77, L78,    L81, L82, L83, L84, L85, L86, L87, L88;  
     
    Array_multiplier_BCD M11(.x1(A[3:0]),.y1(B[3:0]),.H(H11),.L(L11));
    Array_multiplier_BCD M12(.x1(A[3:0]),.y1(B[7:4]),.H(H12),.L(L12));
    Array_multiplier_BCD M13(.x1(A[3:0]),.y1(B[11:8]),.H(H13),.L(L13));
    Array_multiplier_BCD M14(.x1(A[3:0]),.y1(B[15:12]),.H(H14),.L(L14));
    Array_multiplier_BCD M15(.x1(A[3:0]),.y1(B[19:16]),.H(H15),.L(L15));
    Array_multiplier_BCD M16(.x1(A[3:0]),.y1(B[23:20]),.H(H16),.L(L16));
    Array_multiplier_BCD M17(.x1(A[3:0]),.y1(B[27:24]),.H(H17),.L(L17));
    Array_multiplier_BCD M18(.x1(A[3:0]),.y1(B[31:28]),.H(H18),.L(L18));
    
    Array_multiplier_BCD M21(.x1(A[7:4]),.y1(B[3:0]),.H(H21),.L(L21));
    Array_multiplier_BCD M22(.x1(A[7:4]),.y1(B[7:4]),.H(H22),.L(L22));
    Array_multiplier_BCD M23(.x1(A[7:4]),.y1(B[11:8]),.H(H23),.L(L23));
    Array_multiplier_BCD M24(.x1(A[7:4]),.y1(B[15:12]),.H(H24),.L(L24));
    Array_multiplier_BCD M25(.x1(A[7:4]),.y1(B[19:16]),.H(H25),.L(L25));
    Array_multiplier_BCD M26(.x1(A[7:4]),.y1(B[23:20]),.H(H26),.L(L26));
    Array_multiplier_BCD M27(.x1(A[7:4]),.y1(B[27:24]),.H(H27),.L(L27));
    Array_multiplier_BCD M28(.x1(A[7:4]),.y1(B[31:28]),.H(H28),.L(L28));
    
    Array_multiplier_BCD M31(.x1(A[11:8]),.y1(B[3:0]),.H(H31),.L(L31));
    Array_multiplier_BCD M32(.x1(A[11:8]),.y1(B[7:4]),.H(H32),.L(L32));
    Array_multiplier_BCD M33(.x1(A[11:8]),.y1(B[11:8]),.H(H33),.L(L33));
    Array_multiplier_BCD M34(.x1(A[11:8]),.y1(B[15:12]),.H(H34),.L(L34));
    Array_multiplier_BCD M35(.x1(A[11:8]),.y1(B[19:16]),.H(H35),.L(L35));
    Array_multiplier_BCD M36(.x1(A[11:8]),.y1(B[23:20]),.H(H36),.L(L36));
    Array_multiplier_BCD M37(.x1(A[11:8]),.y1(B[27:24]),.H(H37),.L(L37));
    Array_multiplier_BCD M38(.x1(A[11:8]),.y1(B[31:28]),.H(H38),.L(L38));
    
    Array_multiplier_BCD M41(.x1(A[15:12]),.y1(B[3:0]),.H(H41),.L(L41));
    Array_multiplier_BCD M42(.x1(A[15:12]),.y1(B[7:4]),.H(H42),.L(L42));
    Array_multiplier_BCD M43(.x1(A[15:12]),.y1(B[11:8]),.H(H43),.L(L43));
    Array_multiplier_BCD M44(.x1(A[15:12]),.y1(B[15:12]),.H(H44),.L(L44));
    Array_multiplier_BCD M45(.x1(A[15:12]),.y1(B[19:16]),.H(H45),.L(L45));
    Array_multiplier_BCD M46(.x1(A[15:12]),.y1(B[23:20]),.H(H46),.L(L46));
    Array_multiplier_BCD M47(.x1(A[15:12]),.y1(B[27:24]),.H(H47),.L(L47));
    Array_multiplier_BCD M48(.x1(A[15:12]),.y1(B[31:28]),.H(H48),.L(L48));
    
    Array_multiplier_BCD M51(.x1(A[19:16]),.y1(B[3:0]),.H(H51),.L(L51));
    Array_multiplier_BCD M52(.x1(A[19:16]),.y1(B[7:4]),.H(H52),.L(L52));
    Array_multiplier_BCD M53(.x1(A[19:16]),.y1(B[11:8]),.H(H53),.L(L53));
    Array_multiplier_BCD M54(.x1(A[19:16]),.y1(B[15:12]),.H(H54),.L(L54));
    Array_multiplier_BCD M55(.x1(A[19:16]),.y1(B[19:16]),.H(H55),.L(L55));
    Array_multiplier_BCD M56(.x1(A[19:16]),.y1(B[23:20]),.H(H56),.L(L56));
    Array_multiplier_BCD M57(.x1(A[19:16]),.y1(B[27:24]),.H(H57),.L(L57));
    Array_multiplier_BCD M58(.x1(A[19:16]),.y1(B[31:28]),.H(H58),.L(L58));
    
    Array_multiplier_BCD M61(.x1(A[23:20]),.y1(B[3:0]),.H(H61),.L(L61));
    Array_multiplier_BCD M62(.x1(A[23:20]),.y1(B[7:4]),.H(H62),.L(L62));
    Array_multiplier_BCD M63(.x1(A[23:20]),.y1(B[11:8]),.H(H63),.L(L63));
    Array_multiplier_BCD M64(.x1(A[23:20]),.y1(B[15:12]),.H(H64),.L(L64));
    Array_multiplier_BCD M65(.x1(A[23:20]),.y1(B[19:16]),.H(H65),.L(L65));
    Array_multiplier_BCD M66(.x1(A[23:20]),.y1(B[23:20]),.H(H66),.L(L66));
    Array_multiplier_BCD M67(.x1(A[23:20]),.y1(B[27:24]),.H(H67),.L(L67));
    Array_multiplier_BCD M68(.x1(A[23:20]),.y1(B[31:28]),.H(H68),.L(L68));
    
    Array_multiplier_BCD M71(.x1(A[27:24]),.y1(B[3:0]),.H(H71),.L(L71));
    Array_multiplier_BCD M72(.x1(A[27:24]),.y1(B[7:4]),.H(H72),.L(L72));
    Array_multiplier_BCD M73(.x1(A[27:24]),.y1(B[11:8]),.H(H73),.L(L73));
    Array_multiplier_BCD M74(.x1(A[27:24]),.y1(B[15:12]),.H(H74),.L(L74));
    Array_multiplier_BCD M75(.x1(A[27:24]),.y1(B[19:16]),.H(H75),.L(L75));
    Array_multiplier_BCD M76(.x1(A[27:24]),.y1(B[23:20]),.H(H76),.L(L76));
    Array_multiplier_BCD M77(.x1(A[27:24]),.y1(B[27:24]),.H(H77),.L(L77));
    Array_multiplier_BCD M78(.x1(A[27:24]),.y1(B[31:28]),.H(H78),.L(L78));
    
    Array_multiplier_BCD M81(.x1(A[31:28]),.y1(B[3:0]),.H(H81),.L(L81));
    Array_multiplier_BCD M82(.x1(A[31:28]),.y1(B[7:4]),.H(H82),.L(L82));
    Array_multiplier_BCD M83(.x1(A[31:28]),.y1(B[11:8]),.H(H83),.L(L83));
    Array_multiplier_BCD M84(.x1(A[31:28]),.y1(B[15:12]),.H(H84),.L(L84));
    Array_multiplier_BCD M85(.x1(A[31:28]),.y1(B[19:16]),.H(H85),.L(L85));
    Array_multiplier_BCD M86(.x1(A[31:28]),.y1(B[23:20]),.H(H86),.L(L86));
    Array_multiplier_BCD M87(.x1(A[31:28]),.y1(B[27:24]),.H(H87),.L(L87));
    Array_multiplier_BCD M88(.x1(A[31:28]),.y1(B[31:28]),.H(H88),.L(L88));
        
    //Carrys of collumn addition using BCD adders
    wire [3:0] C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16;
    wire [3:0] C2a, C3a, C4a, C5a, C6a, C7a, C8a, C9a, C10a, C11a, C12a, C13a, C14a, C15a, C16a;
    wire [3:0] Sum1, Sum2, Sum3, Sum4, Sum5, Sum6, Sum7, Sum8, Sum9, Sum10, Sum11, Sum12, Sum13, Sum14, Sum15;

    //BCD partial products are added column wise using BCD adders.
    //Carry propagation is taken care by adding all the carries to its previous corresponding sum. 
    //The second carry gnated (3 digit sum)is added to the second previous column sum.
    
    assign P[3:0] = L11;
    BCD_adder3 Add1(H11,L12,L21, P[7:4],C2a,C2);       //L11 is in BCD, hence there is no carry added to sum2
    BCD_adder7 Add2(C2,4'b0,H12,L13,H21,L22,L31, P[11:8],C3a,C3);         //sum = P[11:8]
    BCD_adder9 Add3(C3,C2a,H13,L14,H22,L23,H31,L32,L41, P[15:12],C4a,C4);         //sum = P[15:12]  
    BCD_adder11 Add4(C4,C3a,H14,L15,H23,L24,H32,L33,H41,L42,L51, P[19:16],C5a,C5);         //sum = P[19:16]
    BCD_adder13 Add5(C5,C4a,H15,L16,H24,L25,H33,L34,H42,L43,H51,L52,L61, P[23:20],C6a,C6);            //sum = P[23:20] 
    BCD_adder15 Add6(C6,C5a,H16,L17,H25,L26,H34,L35,H43,L44,H52,L53,H61,L62,L71, P[27:24],C7a,C7);            //sum = P[27:24]
    BCD_adder17 Add7(C7,C6a,H17,L18,H26,L27,H35,L36,H44,L45,H53,L54,H62,L63,H71,L72,L81, P[31:28],C8a,C8);        //sum = P[31:28]
    BCD_adder17 Add8(C8,C7a,H18,H27,L28,H36,L37,H45,L46,H54,L55,H63,L64,H72,L73,H81,L82, P[35:32],C9a,C9);        //sum = P[35:32]
    BCD_adder15 Add9(C9,C8a,H28,H37,L38,H46,L47,H55,L56,H64,L65,H73,L74,H82,L83, P[39:36],C10a,C10);       //sum = P[39:36]
    BCD_adder13 Add10(C10,C9a,H38,H47,L48,H56,L57,H65,L66,H74,L75,H83,L84, P[43:40],C11a,C11);          //sum = P[43:40]
    BCD_adder11 Add11(C11,C10a,H48,H57,L58,H66,L67,H75,L76,H84,L85, P[47:44],C12a,C12);           //sum = P[47:44]
    BCD_adder9 Add12(C12,C11a,H58,H67,L68,H76,L77,H85,L86, P[51:48],C13a,C13);           //sum = P[51:48]
    BCD_adder7 Add13(C13,C12a,H68,H77,L78,H86,L87, P[55:52],C14a,C14);              //sum = P[55:52]
    BCD_adder5 Add14(C14,C13a,H78,H87,L88, P[59:56],C15a,C15);          //sum = P[59:56]
    BCD_adder3 Add15(C15,C14a,H88, P[63:60],C16a,C16);       //sum = P[63:60]   
    assign Carry = C16;
endmodule
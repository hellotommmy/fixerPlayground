
theory FixSADDataFilled imports  BaseProof.BasicInvariants  begin
sledgehammer_params[timeout=10, dont_minimize, "try0" = false]
lemma nextLoad_HostSADData: "nextLoad (  T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ] ) i = nextLoad T i"
apply(case_tac i) apply simp+ done
lemma nextGOPending_HostSADData: "nextGOPending (  T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ] ) i = nextGOPending T i"
apply(case_tac i) apply simp+ done
lemma HostSADData_nextDataFrom_other: shows "nextDTHDataFrom 1 T = nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) "
by simp
lemma HostSADData_nextLoad: shows "nextLoad T 1 = nextLoad ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
by simp
lemma HostSADData'_devcache_invariant1: shows "(CLEntry.block_state (devcache1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]))) = CLEntry.block_state (devcache1 T)"
by simp+
lemma HostSADData'_devcache_invariant2: shows "(CLEntry.block_state (devcache2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]))) = CLEntry.block_state (devcache2 T)"
by simp+
lemma HostSADData'_CSTATE_invariant1: shows "CSTATE X ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 = CSTATE X T 0"
by simp
lemma HostSADData'_CSTATE_invariant2: shows "CSTATE X ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 = CSTATE X T 1"
by simp
lemma snps2_HostSADData: shows "snps2 T =  (snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]))"
by simp+
lemma snps1_HostSADData: shows "snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = snps1 T"
apply(case_tac "program1 T")
by simp+
lemma reqs2_HostSADData: shows "reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = reqs2 T"
apply(case_tac "program1 T")
by simp+
lemma snpresps2_HostSADData: shows "snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = snpresps2 T"
apply(case_tac "program1 T")
by simp+
lemma snpresps1_HostSADData: shows "snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = snpresps1 T"
apply(case_tac "program1 T")
by simp+
lemma reqresps2_HostSADData: shows "reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = reqresps2 T"
apply(case_tac "program1 T")
by simp+
lemma reqresps1_HostSADData: shows "reqresps1 T = [] \<Longrightarrow> length (reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
by simp
lemma dthdatas1_HostSADData: shows "dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] ) = dthdatas1 T"
apply(case_tac "program1 T")
by simp+
lemma dthdatas1_empty_HostSADData: shows "length (dthdatas1 T) \<le> 1 \<Longrightarrow> dthdatas1 ( ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) = []"
by(cases "dthdatas1 T", simp+)
lemma dthdatas2_HostSADData: shows "dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = dthdatas2 T"
apply(case_tac "program1 T")
by simp+
lemma reqresps1_HostSADData_aux: shows "length (reqresps1 T) \<le> 1 \<Longrightarrow> reqresps1 (T [0 -=reqresp ]) = []"
apply(case_tac "reqresps1 T")
by simp+
lemma reqresps1_HostSADData_aux1: shows "reqresps1 T = reqresps1 (T [ Dev1 +=d2hd dthd] [ -=i 0])"
apply(case_tac "program1 T")
by simp+
lemma nextEvict_HostSADData_invariant: shows"nextEvict T 0 = nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
by simp
lemma nextReqIs_HostSADData_IMAD_invariant2: shows 
  "nextReqIs X ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 = nextReqIs X T 1"
by simp
lemma nextReqIs_HostSADData_IMAD_invariant1: shows 
  "nextReqIs X ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 = nextReqIs X T 0"
by simp
lemma CSTATE_HostSADData_otherside_invariant2: shows
" CSTATE X ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 = CSTATE X T 1"
by simp
lemma CSTATE_HostSADData_otherside_invariant3: shows
" CSTATE X ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 = CSTATE X T 0"
by simp
lemma HostSADData_nextGOPendingIs_otherside: shows 
"nextGOPendingIs X ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 = nextGOPendingIs X T 1"
by simp
lemma HostSADData_nextGOPendingIs_general: shows 
"nextGOPendingIs X ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) i = nextGOPendingIs X T i"
by simp
lemma HostSADData_nextGOPending: shows 
"nextGOPendingIs X ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) i = nextGOPendingIs X T i"
by simp
lemma HostSADData_nextEvict_otherside: shows 
"nextEvict  ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 = nextEvict T 1"
by simp
lemma HostSADData_nextDTHDataPending_otherside: shows 
"nextDTHDataPending  ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 = nextDTHDataPending T 1"
by simp
lemma HostSADData_nextSnpRespIs_otherside: shows 
"nextSnpRespIs X  ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 = nextSnpRespIs X T 1"
by simp
lemma HostSADData_nextSnpRespIs_sameside: shows 
"nextSnpRespIs X  ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 = nextSnpRespIs X T 0"
by simp
lemma HostSADData_HSTATE: shows "HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) "
by simp+
lemma nextStore_nextEvict_exclusive: shows "nextEvict T i \<Longrightarrow> \<not>nextStore T i"
apply(induct "program1 T")
apply simp
apply (metis One_nat_def startsEvict.elims(2) startsStore.simps(4) zero_neq_one)
apply(case_tac a)
apply (metis nextEvict_def nextStore_def startsEvict.elims(2) startsStore.simps(4))
apply (metis nextEvict_def nextStore_def startsEvict.elims(2) startsStore.simps(4))
by (metis nextEvict_def nextStore_def startsEvict.elims(2) startsStore.simps(4))
lemma reqlength1_minus: shows "length (reqs1 T) \<le> 1 \<Longrightarrow> reqs1 (T [ 0 -=req]) = []"
apply(cases "reqs1 T") apply simp+ done
lemma empty_reqs_nextReqIs: shows "reqs1 T  = [] \<Longrightarrow> \<not> nextReqIs X T 0"
by simp
lemma HostSADData_empty_reqs1_aux: shows " reqs1 T = reqs1 (  T [ 1 +=snp SnpInv txid]  [ 5 sHost= MAD])"
by simp
lemma reqresps2_HostSADData_remains: shows "reqresps2 (T [ 0 +=hostdata  txid] [ 5 sHost= SharedM]) = reqresps2 T"
by simp
lemma snps2_single_HostSADData: shows "reqresps2 T = [] \<Longrightarrow> length (reqresps2 (T [ 0 +=reqresp GO Shared txid])) \<le> 1 "
by simp
lemma snps2_HostSADData_aux1: shows "reqresps2 T = reqresps2 ( T [ 0 -=req])"
by simp
lemma snps2_HostSADData_aux2: shows "reqresps2 T = [] \<Longrightarrow> length (reqresps2  ( T [ 0 +=hostdata  txid] [ 5 sHost= SharedM] [ 0 +=reqresp GO Shared txid] )) \<le> 1"
using reqresps2_HostSADData_remains snps2_single_HostSADData
by presburger
lemma reqs1_HostShareRdOwn_aux: shows "reqs1 ( T [ 0 +=hostdata  txid] [ 5 sHost= MA] [ 1 +=snp SnpInv txid] ) = reqs1 T"
by simp
lemma HostSADData_one_msg_htddatas1: shows "htddatas1 T = (htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]))"
by simp+
lemma nextHTDDataPending_SADData: shows "nextHTDDataPending T 0 = nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
by simp
lemma reqs1_HostSADData: "reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = reqs1 T"
by simp
lemma reqreps1_HostSADData: "reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = reqresps1 T"
by simp
lemma htddatas2_HostSADData: "htddatas2 T = [] \<Longrightarrow> length (htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
by simp
lemma HostSADData'_coherent_aux_simpler: assumes "SWMR_state_machine T \<and> HSTATE SAD T \<and> nextDTHDataFrom 0 T "
  shows "SWMR_state_machine  ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
proof -
have i0: "SWMR T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i1x: "HSTATE SAD T "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i2x: "nextDTHDataFrom 0 T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i3: "C_msg_P_oppo ISD nextHTDDataPending (\<lambda>T i. \<not> CSTATE Modified T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i4: "H_msg_P_same SD nextDTHDataPending (\<lambda>T i. \<not> CSTATE Modified T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i5: "H_msg_P_same SAD nextDTHDataPending (\<lambda>T i. \<not> CSTATE Modified T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i6: "C_msg_P_oppo ISAD nextGOPending (\<lambda>T i. \<not> CSTATE Modified T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i10: "H_msg_P_same SharedM (nextReqIs RdShared) (\<lambda>T i. \<not> CSTATE Modified T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i11: "H_msg_P_oppo SharedM (nextReqIs RdShared) (\<lambda>T i. \<not> CSTATE Modified T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i12: "H_msg_P_same ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> CSTATE Modified T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i13: "H_msg_P_oppo ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> nextDTHDataPending T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i14: "H_msg_P_oppo ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> nextSnpRespIs RspIFwdM T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i15: "H_msg_P_same ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> nextSnpRespIs RspIFwdM T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i16: "C_H_state IMAD (nextReqIs RdOwn) Modified SD T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i17: "C_H_state IMAD (nextReqIs RdOwn) Modified SAD T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i18: "C_H_state IMAD (nextReqIs RdOwn) Modified SA T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i19: "C_H_state Invalid nextStore Modified SAD T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i20: "C_H_state Invalid nextStore Modified SA T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i21: "C_H_state Invalid nextStore Modified SD T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i22: "HSTATE SharedM T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i23: "HSTATE SD T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i24: "HSTATE MD T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i25: "C_msg_not RdShared IMAD T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i26: "C_msg_not RdShared Invalid T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i27: "H_msg_P_same ModifiedM (nextReqIs DirtyEvict) (\<lambda>T i. CSTATE MIA T i \<or> CSTATE IIA T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i28: "C_msg_P_host MIA (nextGOPendingIs GO_WritePull) (\<lambda>T. \<not> HSTATE ModifiedM T) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i29: "C_msg_P_same MIA (nextGOPendingIs GO_WritePull) nextEvict T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i30: "C_msg_P_host MIA (nextGOPendingIs GO_WritePull) (HSTATE ID) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i31: "C_state_not MIA RdShared T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i32: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) nextEvict T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i34: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextReqIs RdShared T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i35: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextDTHDataPending T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i36: "H_C_state_msg_same ModifiedM Modified (\<lambda>T i. \<not> nextReqIs RdShared T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i37: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) nextEvict T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i39: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextReqIs RdShared T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i40: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextDTHDataPending T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i41: "H_C_state_msg_oppo ModifiedM IIA (\<lambda>T i. \<not> nextReqIs RdShared T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i46: "C_msg_P_host Shared (nextSnoopIs SnpInv) (HSTATE MA) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i47: "C_msg_state RdShared ISAD T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i49: "C_not_C_msg Modified ISAD nextGOPending T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i50: "C_msg_P_same Invalid nextStore (\<lambda>T i. \<not> nextHTDDataPending T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i51: "C_msg_P_same Invalid nextStore (\<lambda>T i. \<not> nextSnoopIs SnpInv T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i52: "C_msg_P_same ISAD nextGOPending (\<lambda>T i. \<not> nextReqIs RdShared T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i55: "snps2 T \<noteq> [] \<longrightarrow> reqs1 T = [] \<and> snpresps2 T = [] \<and> dthdatas2 T = [] \<and> reqresps1 T = []"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i56: "snps1 T \<noteq> [] \<longrightarrow> reqs2 T = [] \<and> snpresps1 T = [] \<and> dthdatas1 T = [] \<and> reqresps2 T = []"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i57: "length (reqs1 T) \<le> 1"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i58: "length (reqs2 T) \<le> 1"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i59: "C_msg_P_same Shared (nextSnoopIs SnpInv) (\<lambda>T i. \<not> nextHTDDataPending T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i60: "length (snps2 T) \<le> 1"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i61: "length (snps1 T) \<le> 1"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i611old: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) (\<lambda> T i. \<not>nextSnoopPending T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i612old: "C_msg_P_oppo Invalid nextStore (\<lambda>T i. \<not> nextSnoopPending T i) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i613old: "(CSTATE Invalid T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> reqresps1 T = [] \<and> htddatas1 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i614old: "(CSTATE Invalid T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> reqresps2 T = [] \<and> htddatas2 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i615old: "(CSTATE Shared T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> reqresps1 T = [] \<and> htddatas1 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i616old: "(CSTATE Shared T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> reqresps2 T = [] \<and> htddatas2 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i617old: "(CSTATE IIA T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> htddatas1 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i618old: "(CSTATE IIA T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> htddatas2 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i68: "CSTATE Invalid T 0 \<longrightarrow> reqs1 T = []"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i69: "CSTATE Invalid T 1 \<longrightarrow> reqs2 T = []"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i70: "CSTATE Shared T 0 \<longrightarrow> reqs1 T = []"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i71: "CSTATE Shared T 1 \<longrightarrow> reqs2 T = []"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i72: "CSTATE Modified T 0 \<longrightarrow> \<not>CSTATE Modified T 1"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i73: "CSTATE Modified T 1 \<longrightarrow> \<not>CSTATE Modified T 0"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i74: "CSTATE ISD T 0 \<longrightarrow> \<not>HSTATE ModifiedM T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i75: "CSTATE ISD T 1 \<longrightarrow> \<not>HSTATE ModifiedM T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i76: "C_msg_P_host ISD (nextSnoopIs SnpInv) (HSTATE MA) T"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i77: "length (htddatas1 T) \<le> 1"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i78: "length (htddatas2 T) \<le> 1"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i79: "CSTATE ISD T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> reqresps1 T = []"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i80: "CSTATE ISD T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> reqresps2 T = []"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i81: "CSTATE ISD T 0 \<longrightarrow> reqs1 T = []"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i82: "CSTATE ISD T 1 \<longrightarrow> reqs2 T = []"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i83: "(CSTATE IMAD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> reqs1 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i84: "(CSTATE IMAD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> reqs2 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i85: "(length (reqresps1 T) \<le> 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i86: "(length (reqresps2 T) \<le> 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i87: "(CSTATE MIA T 0 \<and> (nextGOPendingIs GO_WritePull T 0)  \<longrightarrow> snps1 T = [] )"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i88: "(CSTATE MIA T 1 \<and> (nextGOPendingIs GO_WritePull T 1)  \<longrightarrow> snps2 T = [] )"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i89: "(CSTATE MIA T 0 \<and> (nextGOPendingIs GO_WritePull T 0) \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i90: "(CSTATE MIA T 1 \<and> (nextGOPendingIs GO_WritePull T 1) \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i91: "(CSTATE ISAD T 0 \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i92: "(CSTATE ISAD T 1 \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i93: "(C_msg_P_same MIA  (nextReqIs DirtyEvict) (nextEvict) T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i94: "(reqs1 T \<noteq> [] \<longrightarrow> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i95: "(reqs2 T \<noteq> [] \<longrightarrow> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i98: "(reqs1 T \<noteq> [] \<longrightarrow> snpresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i99: "(reqs2 T \<noteq> [] \<longrightarrow> snpresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i100: "(reqs1 T \<noteq> [] \<longrightarrow> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i101: "(reqs2 T \<noteq> [] \<longrightarrow> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i751old: " (CSTATE ISD T 0 \<longrightarrow> nextLoad T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)+
have i752old: " (CSTATE ISD T 1 \<longrightarrow> nextLoad T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)+
have i104: "(reqs1 T \<noteq> [] \<longrightarrow> reqresps1 T = [] ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i105: "(reqs2 T \<noteq> [] \<longrightarrow> reqresps2 T = [] ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i106: "(HSTATE SAD T \<longrightarrow> (CSTATE ISAD T 0 \<or> CSTATE ISAD T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i107: "(HSTATE ModifiedM T \<longrightarrow> \<not>CSTATE Shared T 0 \<and> \<not>CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i108: "(HSTATE SD T \<and> dthdatas1 T \<noteq> [] \<longrightarrow> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i109: "(HSTATE SD T \<and> dthdatas2 T \<noteq> [] \<longrightarrow> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i110: "(length (dthdatas1 T ) \<le> 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i111: "(length (dthdatas2 T ) \<le> 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i112: "(HSTATE SD T \<and> nextDTHDataFrom 0 T \<longrightarrow> (CSTATE ISAD T 1 \<or> CSTATE ISD T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i113: "(HSTATE SD T \<and> nextDTHDataFrom 1 T \<longrightarrow> (CSTATE ISAD T 0 \<or> CSTATE ISD T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i114: "(HSTATE SA T \<and> (nextSnpRespIs RspIFwdM T 0 \<or> nextSnpRespIs RspSFwdM T 0) \<longrightarrow> CSTATE ISAD T 1 \<or> CSTATE ISA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i115: "(HSTATE SA T \<and> (nextSnpRespIs RspIFwdM T 1 \<or> nextSnpRespIs RspSFwdM T 1) \<longrightarrow> CSTATE ISAD T 0 \<or> CSTATE ISA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i118: "(snpresps1 T \<noteq> [] \<longrightarrow> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i119: "(snpresps2 T \<noteq> [] \<longrightarrow> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i120: "(length (snpresps1 T) \<le> 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i121: "(length (snpresps2 T) \<le> 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i126: "(HSTATE SAD T \<and> snpresps1 T \<noteq> [] \<longrightarrow> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i127: "(HSTATE SAD T \<and> snpresps2 T \<noteq> [] \<longrightarrow> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i128: "(HSTATE MD T \<and> reqs1 T \<noteq> [] \<longrightarrow> dthdatas1 T \<noteq> []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i129: "(HSTATE MD T \<and> reqs2 T \<noteq> [] \<longrightarrow> dthdatas2 T \<noteq> []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i130: "(HSTATE ID T \<and> dthdatas1 T \<noteq> [] \<longrightarrow> CSTATE Invalid T 0 \<or> CSTATE ISAD T 0 \<or> CSTATE IMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i131: "(HSTATE ID T \<and> dthdatas2 T \<noteq> [] \<longrightarrow> CSTATE Invalid T 1 \<or> CSTATE ISAD T 1 \<or> CSTATE IMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i132: "(HSTATE ID T \<and> dthdatas1 T \<noteq> [] \<longrightarrow> \<not>CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i133: "(HSTATE ID T \<and> dthdatas2 T \<noteq> [] \<longrightarrow> \<not>CSTATE MIA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i136: "(dthdatas1 T \<noteq> [] \<and> HSTATE SD T \<longrightarrow> snpresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i137: "(dthdatas2 T \<noteq> [] \<and> HSTATE SD T \<longrightarrow> snpresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i138: "(CSTATE ISD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> nextLoad T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i139: "(CSTATE ISD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> nextLoad T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i142: "(C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) (\<lambda> T i. \<not>nextSnoopPending T i) T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i143: "(CSTATE ISAD T 0 \<and> nextGOPending T 0 \<longrightarrow> HSTATE SD T \<or> HSTATE SharedM T \<or> HSTATE MAD T \<or> HSTATE SB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i144: "(CSTATE ISAD T 1 \<and> nextGOPending T 1 \<longrightarrow> HSTATE SD T \<or> HSTATE SharedM T \<or> HSTATE MAD T \<or> HSTATE SB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i145: "(CSTATE ISAD T 0 \<longrightarrow> nextLoad T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i146: "(CSTATE ISAD T 1 \<longrightarrow> nextLoad T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i147: "(CSTATE ISAD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i148: "(CSTATE ISAD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i149: "(CSTATE ISAD T 0 \<and> nextGOPending T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i150: "(CSTATE ISAD T 1 \<and> nextGOPending T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i153: "((CSTATE Invalid T 0 \<or> CSTATE ISDI T 0) \<and> HSTATE MD T \<longrightarrow> dthdatas1 T \<noteq> []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i154: "((CSTATE Invalid T 1 \<or> CSTATE ISDI T 1) \<and> HSTATE MD T \<longrightarrow> dthdatas2 T \<noteq> []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i159: "(HSTATE ModifiedM T \<longrightarrow> snpresps2 T = [] \<and> snpresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i160: "(HSTATE SAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> CSTATE ISAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i161: "(HSTATE SAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> CSTATE ISAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i164: "(HSTATE SAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i165: "(HSTATE SAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i166: "(HSTATE SAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqs2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i167: "(HSTATE SAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqs1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i168: "(HSTATE SD T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqs2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i169: "(HSTATE SD T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqs1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i170: "(HSTATE SharedM T \<and> nextReqIs RdOwn T 0 \<longrightarrow> dthdatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i171: "(HSTATE SharedM T \<and> nextReqIs RdOwn T 1 \<longrightarrow> dthdatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i172: "(HSTATE SharedM T \<and> nextReqIs RdShared T 0 \<longrightarrow> dthdatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i173: "(HSTATE SharedM T \<and> nextReqIs RdShared T 1 \<longrightarrow> dthdatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i178: "(CSTATE IIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<longrightarrow> HSTATE IB T \<or> HSTATE SB T \<or> HSTATE MB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i179: "(CSTATE IIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> HSTATE IB T \<or> HSTATE SB T \<or> HSTATE MB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i180: "(CSTATE IIA T 0 \<and> nextGOPendingIs GO_WritePullDrop T 0 \<longrightarrow> HSTATE SharedM T \<or> HSTATE InvalidM T \<or> HSTATE ModifiedM T \<or> HSTATE SB T \<or> HSTATE ID T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i181: "(CSTATE IIA T 1 \<and> nextGOPendingIs GO_WritePullDrop T 1 \<longrightarrow> HSTATE SharedM T \<or> HSTATE InvalidM T \<or> HSTATE ModifiedM T \<or> HSTATE SB T \<or> HSTATE ID T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i182: "(CSTATE IMAD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MA T \<or> HSTATE MAD T \<or> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i183: "(CSTATE IMAD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MA T \<or> HSTATE MAD T \<or> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i186: "(HSTATE SharedM T \<longrightarrow> dthdatas1 T = [] \<and> dthdatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i187: "(CSTATE MIA T 1 \<longrightarrow> \<not>CSTATE MIA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i188: "(CSTATE MIA T 0 \<longrightarrow> \<not>CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i189: "(HSTATE ModifiedM T \<longrightarrow> dthdatas2 T = [] \<and> dthdatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i190: "(nextDTHDataFrom  0 T \<longrightarrow> \<not> nextHTDDataPending T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i191: "(nextDTHDataFrom  1 T \<longrightarrow> \<not> nextHTDDataPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i192: "(nextDTHDataFrom 0 T \<longrightarrow> \<not> nextDTHDataFrom 1 T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i193: "(nextDTHDataFrom 1 T \<longrightarrow> \<not> nextDTHDataFrom 0 T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i194: "(HSTATE SA T \<longrightarrow> dthdatas2 T = [] \<and> dthdatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i195: "(HSTATE SD T \<longrightarrow> \<not> CSTATE IIA T 0 \<or> \<not> CSTATE IIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i196: "(HSTATE SAD T \<longrightarrow> (\<not> CSTATE IIA T 0 \<or> nextSnpRespIs RspIFwdM T 0) \<and> (\<not> CSTATE IIA T 1 \<or> nextSnpRespIs RspIFwdM T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i197: "(CSTATE IIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<longrightarrow> \<not> nextDTHDataFrom 1 T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i198: "(CSTATE IIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> \<not> nextDTHDataFrom 0 T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i199: "(CSTATE IIA T 0 \<longrightarrow> \<not> CSTATE IIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i200: "(CSTATE IIA T 1 \<longrightarrow> \<not> CSTATE IIA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i301: "(CSTATE MIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<longrightarrow> \<not> nextDTHDataFrom 1 T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i302: "(CSTATE MIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> \<not> nextDTHDataFrom 0 T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i305: "(snpresps1 T \<noteq> [] \<longrightarrow> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i306: "(snpresps2 T \<noteq> [] \<longrightarrow> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i307: "(HSTATE SharedM T \<and> nextReqIs RdShared T 1 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i308: "(HSTATE SharedM T \<and> nextReqIs RdShared T 0 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i309: "(HSTATE SD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i310: "(HSTATE SD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i313: "(HSTATE ModifiedM T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i314: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePull) nextEvict T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i315: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextReqIs RdShared T i) T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i316: "(CSTATE SIA T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i317: "(CSTATE SIA T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i318: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePull) (\<lambda> T i. \<not>nextSnoopPending T i) T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i319: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<longrightarrow> HSTATE IB T \<or> HSTATE SB T \<or> HSTATE MB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i320: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> HSTATE IB T \<or> HSTATE SB T \<or> HSTATE MB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i321: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextDTHDataPending T i) T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i322: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<longrightarrow> \<not> nextDTHDataFrom 1 T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i323: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> \<not> nextDTHDataFrom 0 T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i324: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) nextEvict T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i325: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextReqIs RdShared T i) T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i326: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) (\<lambda> T i. \<not>nextSnoopPending T i) T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i327: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePullDrop T 0 \<longrightarrow> HSTATE InvalidM T \<or> HSTATE SharedM T \<or> HSTATE SB T \<or> HSTATE IB T \<or> HSTATE ModifiedM T \<or> HSTATE ID T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i328: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePullDrop T 1 \<longrightarrow> HSTATE InvalidM T \<or> HSTATE SharedM T \<or> HSTATE SB T \<or> HSTATE IB T \<or> HSTATE ModifiedM T \<or> HSTATE ID T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i329: "(C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextDTHDataPending T i) T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i332: "(CSTATE SMAD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MA T \<or> HSTATE MAD T \<or> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i333: "(CSTATE ISAD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow>  HSTATE SharedM T \<or> HSTATE SA T \<or> HSTATE MA T \<or> HSTATE SB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i334: "(CSTATE ISAD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow>  HSTATE SharedM T \<or> HSTATE SA T \<or> HSTATE MA T \<or> HSTATE SB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i335: "(CSTATE ISAD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> (CSTATE IMAD T 1 \<and> nextHTDDataPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i336: "(CSTATE ISAD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> (CSTATE IMAD T 0 \<and> nextHTDDataPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i337: "(C_not_C_msg Modified IMAD nextGOPending T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i338: "(CSTATE IMAD T 0 \<and> nextGOPending T 0 \<longrightarrow> HSTATE MD T \<or> HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i339: "(CSTATE IMAD T 0 \<longrightarrow> nextStore T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i340: "(CSTATE IMAD T 1 \<longrightarrow> nextStore T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i341: "(CSTATE IMAD T 0 \<and> nextGOPending T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i342: "(CSTATE IMAD T 1 \<and> nextGOPending T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i343: "(snpresps1 T \<noteq> [] \<longrightarrow> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i344: "(snpresps2 T \<noteq> [] \<longrightarrow> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i345: "(CSTATE SMAD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MA T \<or> HSTATE MAD T \<or> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i346: "(CSTATE IMAD T 1 \<and> nextGOPending T 1 \<longrightarrow>  HSTATE MD T \<or> HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i347: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<longrightarrow>  HSTATE MD T \<or> HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i348: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<longrightarrow>  HSTATE MD T \<or> HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i349: "(CSTATE SMAD T 0 \<longrightarrow> nextStore T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i350: "(CSTATE SMAD T 1 \<longrightarrow> nextStore T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i351: "(C_msg_P_same IMA (nextGOPending) nextStore T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i352: "(CSTATE IMA T 0 \<or> CSTATE SMA T 0 \<or> CSTATE ISA T 0 \<longrightarrow> \<not> nextHTDDataPending T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i353: "(CSTATE IMA T 1 \<or> CSTATE SMA T 1 \<or> CSTATE ISA T 1 \<longrightarrow> \<not> nextHTDDataPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i354: "(C_msg_P_oppo IMA (nextGOPending) (\<lambda> T i. \<not>nextSnoopPending T i) T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i355: "(C_msg_P_oppo SMA (nextGOPending) (\<lambda> T i. \<not>nextSnoopPending T i) T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i356: "(C_msg_P_oppo ISA (nextGOPending) (\<lambda> T i. \<not>nextSnoopPending T i) T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i357: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i358: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i365: "(C_msg_P_same SMA (nextGOPending) nextStore T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i366: "((CSTATE SMA T 0 \<and> nextGOPending T 0 \<or> CSTATE IMD T 0 \<and> nextHTDDataPending T 0 \<or> CSTATE SMD T 0 \<and> nextHTDDataPending T 0) \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i367: "((CSTATE SMA T 1 \<and> nextGOPending T 1 \<or> CSTATE IMD T 1 \<and> nextHTDDataPending T 1 \<or> CSTATE SMD T 1 \<and> nextHTDDataPending T 1) \<longrightarrow>  HSTATE ModifiedM T \<or> HSTATE MAD T \<or> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i368: "(CSTATE ISD T 0 \<or> CSTATE ISAD T 0 \<or> CSTATE ISA T 0 \<or> CSTATE ISDI T 0 \<longrightarrow> nextLoad T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i369: "(CSTATE ISD T 1 \<or> CSTATE ISAD T 1 \<or> CSTATE ISA T 1 \<or> CSTATE ISDI T 1 \<longrightarrow> nextLoad T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i370: "(CSTATE IMD T 0 \<or> CSTATE IMAD T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMD T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE SMA T 0  \<longrightarrow> nextStore T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i371: "(CSTATE IMD T 1 \<or> CSTATE IMAD T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMD T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE SMA T 1  \<longrightarrow> nextStore T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i374: "(CSTATE ISA T 0 \<and> nextGOPending T 0 \<longrightarrow> HSTATE SharedM T \<or> HSTATE MAD T \<or> HSTATE MA T \<or> HSTATE SB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i375: "(CSTATE ISA T 1 \<and> nextGOPending T 1 \<longrightarrow> HSTATE SharedM T \<or> HSTATE MAD T \<or> HSTATE MA T \<or> HSTATE SB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i376: "(CSTATE ISDI T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> HSTATE ModifiedM T \<or> HSTATE MAD T  \<or> HSTATE MA T \<or> HSTATE MD T\<or> HSTATE ID T \<or> HSTATE InvalidM T \<or> HSTATE SharedM T \<or> HSTATE SB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i377: "(CSTATE ISDI T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> reqresps1 T = [] \<and> snps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i378: "(CSTATE ISDI T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> reqresps2 T = [] \<and> snps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i379: "(CSTATE ISDI T 0 \<longrightarrow> \<not>nextReqIs RdOwn T 1 \<or> \<not>HSTATE ModifiedM T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i380: "(CSTATE ISDI T 1 \<longrightarrow> \<not>nextReqIs RdOwn T 0 \<or> \<not>HSTATE ModifiedM T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i381: "(CSTATE Invalid T 0 \<longrightarrow> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i382: "(CSTATE Invalid T 1 \<longrightarrow> reqresps2 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i383: "(CSTATE ISDI T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> HSTATE ModifiedM T \<or> HSTATE MAD T  \<or> HSTATE MA T \<or> HSTATE MD T\<or> HSTATE ID T \<or> HSTATE InvalidM T \<or> HSTATE SharedM T \<or> HSTATE SB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i384: "(CSTATE Shared T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i385: "(CSTATE Shared T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i388: "(CSTATE SMAD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i389: "(CSTATE SMAD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i390: "(CSTATE SMAD T 0 \<and> reqresps1 T = [] \<and> htddatas1 T = [] \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i391: "(CSTATE SMAD T 1 \<and> reqresps2 T = [] \<and> htddatas2 T = [] \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i392: "(nextReqIs RdOwn T 0 \<longrightarrow> CSTATE SMAD T 0 \<or> CSTATE IMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i393: "(nextReqIs RdOwn T 1 \<longrightarrow> CSTATE SMAD T 1 \<or> CSTATE IMAD T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i396: "(CSTATE SMAD T 0 \<and> nextSnoopIs SnpInv T 0 \<and> CXL_SPG_used T 0 \<longrightarrow> nextReqIs RdOwn T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i397: "(CSTATE SMAD T 1 \<and> nextSnoopIs SnpInv T 1 \<and> CXL_SPG_used T 1 \<longrightarrow> nextReqIs RdOwn T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i400: "(CSTATE ISD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i401: "(CSTATE ISD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i406: "(CSTATE IMA T 0 \<or> CSTATE SMA T 0 \<or> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0)  \<longrightarrow> dthdatas1 T = [] \<and> (dthdatas2 T = [] \<or> HSTATE MB T \<or> HSTATE ModifiedM T)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i407: "(CSTATE IMA T 1 \<or> CSTATE SMA T 1 \<or> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1)  \<longrightarrow> dthdatas2 T = [] \<and> (dthdatas1 T = [] \<or> HSTATE MB T \<or> HSTATE ModifiedM T)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i408: "(CSTATE IMD T 0 \<or> CSTATE SMD T 0 \<or> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextGOPending T 0) \<longrightarrow> dthdatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i409: "(CSTATE IMD T 1 \<or> CSTATE SMD T 1 \<or> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextGOPending T 1) \<longrightarrow> dthdatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i410: "(HSTATE MD T \<longrightarrow> snpresps1 T = [] \<and> snpresps2 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i417: "(HSTATE ModifiedM T  \<and> nextReqIs RdOwn T 0 \<longrightarrow> (CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i418: "(HSTATE ModifiedM T  \<and> nextReqIs RdOwn T 1 \<longrightarrow> (CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i419: "((CSTATE Invalid T 0 \<or> CSTATE ISDI T 0) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i420: "((CSTATE Invalid T 1 \<or> CSTATE ISDI T 1) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i421: "(CSTATE IIA T 0 \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i422: "(CSTATE IIA T 1 \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i423: "(HSTATE MD T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i424: "(HSTATE MD T \<and> nextDTHDataFrom 0 T \<longrightarrow> CSTATE IMAD T 1 \<and> nextGOPending T 1 \<or> CSTATE IMD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i425: "(HSTATE MD T \<and> nextDTHDataFrom 1 T \<longrightarrow> CSTATE IMAD T 0 \<and> nextGOPending T 0 \<or> CSTATE IMD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i426: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> CSTATE IMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i427: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> CSTATE IMAD T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i428: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> snpresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i429: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> snpresps1 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i432: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> reqs2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i433: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE Modified T 1 \<and> reqs1 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i434: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i435: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqresps1 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i436: "(HSTATE SAD T \<and> (nextSnpRespIs RspIFwdM T 0 \<or> nextSnpRespIs RspSFwdM T 0) \<longrightarrow> CSTATE ISAD T 1 ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i437: "(HSTATE SAD T \<and> (nextSnpRespIs RspIFwdM T 1 \<or> nextSnpRespIs RspSFwdM T 1) \<longrightarrow> CSTATE ISAD T 0 ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i440: "(nextSnpRespIs RspSFwdM T 0 \<longrightarrow> CSTATE Shared T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE SIA T 0 \<or> CSTATE SIAC T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i441: "(nextSnpRespIs RspSFwdM T 1 \<longrightarrow> CSTATE Shared T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE SIA T 1 \<or> CSTATE SIAC T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i442: "((HSTATE SAD T \<or> HSTATE MAD T \<or> HSTATE SA T \<or> HSTATE MA T) \<and> snpresps1 T \<noteq> [] \<longrightarrow> htddatas1 T = [] \<or> CSTATE ISDI T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i443: "((HSTATE SAD T \<or> HSTATE MAD T \<or> HSTATE SA T \<or> HSTATE MA T) \<and> snpresps2 T \<noteq> [] \<longrightarrow> htddatas2 T = [] \<or> CSTATE ISDI T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i444: "(HSTATE SAD T \<and> (nextSnpRespIs RspIFwdM T 0 \<or> nextSnpRespIs RspSFwdM T 0) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i445: "(HSTATE SAD T \<and> (nextSnpRespIs RspIFwdM T 1 \<or> nextSnpRespIs RspSFwdM T 1) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i448: "(HSTATE MAD T \<and> nextSnpRespIs RspIFwdM T 0 \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> dthdatas1 T \<noteq> [] \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i449: "(HSTATE MAD T \<and> nextSnpRespIs RspIFwdM T 1 \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> dthdatas2 T \<noteq> [] \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i450: "(HSTATE MA T \<and> snpresps1 T \<noteq> [] \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> htddatas2 T \<noteq> [] \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i451: "(HSTATE MA T \<and> snpresps2 T \<noteq> [] \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> htddatas1 T \<noteq> [] \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i452: "(nextReqIs DirtyEvict T 0 \<longrightarrow> CSTATE MIA T 0 \<or>  CSTATE SIA T 0 \<or> CSTATE IIA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i453: "(nextReqIs DirtyEvict T 1 \<longrightarrow> CSTATE MIA T 1 \<or>  CSTATE SIA T 1 \<or> CSTATE IIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i454: "(HSTATE MA T \<longrightarrow> dthdatas2 T = [] \<and> dthdatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i455: "((nextSnpRespIs RspIFwdM T 0 \<or> nextSnpRespIs RspIHitSE T 0) \<longrightarrow> CSTATE Invalid T 0 \<or> CSTATE ISDI T 0 \<or> CSTATE ISAD T 0 \<or> CSTATE IMAD T 0 \<or> CSTATE IIA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i456: "((nextSnpRespIs RspIFwdM T 1 \<or> nextSnpRespIs RspIHitSE T 1) \<longrightarrow> CSTATE Invalid T 1 \<or> CSTATE ISDI T 1 \<or> CSTATE ISAD T 1 \<or> CSTATE IMAD T 1 \<or> CSTATE IIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i459: "((CSTATE Invalid T 0  \<or> CSTATE ISDI T 0 \<or> nextReqIs RdOwn T 0) \<and> HSTATE MA T \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i460: "((CSTATE Invalid T 1  \<or> CSTATE ISDI T 1 \<or> nextReqIs RdOwn T 1) \<and> HSTATE MA T \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0))"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i461: "((CSTATE ISAD T 0 \<and> nextGOPending T 0) \<or> CSTATE ISA T 0 \<or> ( nextHTDDataPending T 0) \<or> CSTATE Shared T 0 \<longrightarrow> \<not> CSTATE Modified T 1 \<and> (dthdatas1 T = [] \<or> nextSnpRespIs RspSFwdM T 0 \<or> HSTATE SD T)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i462: "((CSTATE ISAD T 1 \<and> nextGOPending T 1) \<or> CSTATE ISA T 1 \<or> ( nextHTDDataPending T 1) \<or> CSTATE Shared T 1 \<longrightarrow> \<not> CSTATE Modified T 0 \<and> (dthdatas2 T = [] \<or> nextSnpRespIs RspSFwdM T 1 \<or> HSTATE SD T)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i464: "(CSTATE IMD T 0 \<or> CSTATE SMD T 0 \<or> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextGOPending T 0) \<longrightarrow> ((\<not> CSTATE ISD T 1) \<and> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE SMD T 1 \<and> \<not>( (CSTATE ISAD T 1 \<or> CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextGOPending T 1) \<and> \<not>CSTATE ISA T 1 \<and> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1 \<and> \<not> (  nextHTDDataPending T 1) \<and>  \<not> CSTATE Shared T 1 \<and> \<not> CSTATE Modified T 1) \<or> nextSnoopIs SnpInv T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i465: "(CSTATE IMD T 1 \<or> CSTATE SMD T 1 \<or> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextGOPending T 1) \<longrightarrow> ((\<not> CSTATE ISD T 0) \<and> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE SMD T 0 \<and> \<not>( (CSTATE ISAD T 0 \<or> CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextGOPending T 0) \<and> \<not>CSTATE ISA T 0 \<and> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0 \<and> \<not> (  nextHTDDataPending T 0) \<and>  \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Modified T 0) \<or> nextSnoopIs SnpInv T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i466: "(CSTATE Shared T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i467: "(CSTATE Shared T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE SMA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i468: "(CSTATE ISD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i469: "(CSTATE ISD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE SMA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i470: "(HSTATE MD T \<and> nextDTHDataFrom 0 T \<longrightarrow>  \<not> nextReqIs CleanEvict T 0 \<and> \<not> nextReqIs CleanEvictNoData T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i471: "(HSTATE MD T \<and> nextDTHDataFrom 1 T \<longrightarrow>  \<not> nextReqIs CleanEvict T 1 \<and> \<not> nextReqIs CleanEvictNoData T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i472: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow>  \<not> nextReqIs CleanEvict T 0 \<and> \<not> nextReqIs CleanEvictNoData T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i473: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow>  \<not> nextReqIs CleanEvict T 1 \<and> \<not> nextReqIs CleanEvictNoData T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i474: "(CSTATE Modified T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i475: "(CSTATE Modified T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i476: "(CSTATE Modified T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i477: "(CSTATE Modified T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i478: "(CSTATE MIA T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i479: "(CSTATE MIA T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i480: "(CSTATE MIA T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> CSTATE ISAD T 1 ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i481: "(CSTATE MIA T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> CSTATE ISAD T 0 ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i482: "(CSTATE Modified T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i483: "(CSTATE Modified T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i484: "(CSTATE Modified T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> CSTATE ISAD T 1 ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i485: "(CSTATE Modified T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> CSTATE ISAD T 0 ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i486: "(CSTATE Modified T 0 \<longrightarrow> reqs1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i487: "(CSTATE Modified T 1 \<longrightarrow> reqs2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i488: "(CSTATE Modified T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> reqresps1 T = [] \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i489: "(CSTATE Modified T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> reqresps2 T = [] \<and> htddatas2 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i490: "(HSTATE InvalidM T \<and> nextReqIs RdShared T 0 \<longrightarrow> dthdatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i491: "(HSTATE InvalidM T \<and> nextReqIs RdShared T 1 \<longrightarrow> dthdatas1 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i492: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1 \<and> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i493: "(nextReqIs RdOwn T 0 \<longrightarrow> \<not> CSTATE ISAD T 0 \<and> \<not> CSTATE Invalid T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i494: "(nextReqIs RdOwn T 1 \<longrightarrow> \<not> CSTATE ISAD T 1 \<and> \<not> CSTATE Invalid T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i495: "(HSTATE InvalidM T \<and> nextReqIs RdOwn T 0 \<longrightarrow> CSTATE IMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i496: "(HSTATE InvalidM T \<and> nextReqIs RdOwn T 1 \<longrightarrow> CSTATE IMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i497: "(HSTATE InvalidM T \<and> nextReqIs RdOwn T 0 \<longrightarrow> dthdatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i498: "(HSTATE InvalidM T \<and> nextReqIs RdOwn T 1 \<longrightarrow> dthdatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i499: "(CSTATE SIA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i500: "(CSTATE SIA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i501: "(CSTATE SIA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i502: "(CSTATE SIA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i503: "(CSTATE SIA T 0 \<and> nextSnoopIs SnpInv T 0 \<and> CXL_SPG_used T 0 \<longrightarrow> (nextReqIs CleanEvict T 0 \<or> nextReqIs CleanEvictNoData T 0 )) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i504: "(CSTATE SIA T 1 \<and> nextSnoopIs SnpInv T 1 \<and> CXL_SPG_used T 1 \<longrightarrow> (nextReqIs CleanEvict T 1 \<or> nextReqIs CleanEvictNoData T 1 )) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i505: "(CSTATE SIA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i506: "(CSTATE SIA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE SMA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i507: "(CSTATE SMAD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i508: "(CSTATE SMAD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE SMA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i509: "(HSTATE ID T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1 \<and> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i510: "(HSTATE ModifiedM T \<and> nextReqIs DirtyEvict T 0 \<longrightarrow> (\<not> CSTATE Modified T 0 \<or> \<not> CSTATE Modified T 1) \<and> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i511: "(HSTATE ModifiedM T \<and> nextReqIs DirtyEvict T 1 \<longrightarrow> (\<not> CSTATE Modified T 0 \<or> \<not> CSTATE Modified T 1) \<and> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i512: "(HSTATE ID T \<and> nextReqIs RdOwn T 0 \<longrightarrow> CSTATE IMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i513: "(HSTATE ID T \<and> nextReqIs RdOwn T 1 \<longrightarrow> CSTATE IMAD T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i514: "(CSTATE SMAD T 0 \<and> nextGOPending T 0\<longrightarrow> nextHTDDataPending T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i515: "(CSTATE SMAD T 1 \<and> nextGOPending T 1\<longrightarrow> nextHTDDataPending T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i516: "(C_msg_P_oppo SMAD nextGOPending (\<lambda>T i. \<not> nextSnoopPending T i) T)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i517: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 0 \<longrightarrow> CSTATE SIAC T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i518: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 1 \<longrightarrow> CSTATE SIAC T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i521: "(nextGOPendingIs GO_WritePull T 0 \<and> HSTATE InvalidM T \<longrightarrow> reqresps2 T = [] \<or> nextReqRespStateIs Invalid (reqresps2 T)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i522: "(nextGOPendingIs GO_WritePull T 1 \<and> HSTATE InvalidM T \<longrightarrow> reqresps1 T = [] \<or> nextReqRespStateIs Invalid (reqresps1 T)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i523: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 0 \<longrightarrow> nextEvict T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i524: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 1 \<longrightarrow> nextEvict T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i525: "(HSTATE SharedM T \<and> nextReqIs CleanEvict T 0 \<longrightarrow> nextEvict T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i526: "(HSTATE SharedM T \<and> nextReqIs CleanEvict T 1 \<longrightarrow> nextEvict T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i527: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 0 \<longrightarrow> \<not> CSTATE ISDI T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i528: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 1 \<longrightarrow> \<not> CSTATE ISDI T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i529: "(HSTATE SharedM T \<and> nextReqIs CleanEvict T 0 \<longrightarrow> \<not> CSTATE ISDI T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i530: "(HSTATE SharedM T \<and> nextReqIs CleanEvict T 1 \<longrightarrow> \<not> CSTATE ISDI T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i531: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 0 \<longrightarrow> \<not> CSTATE MIA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i532: "(HSTATE SharedM T \<and> nextReqIs CleanEvictNoData T 1 \<longrightarrow> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i533: "(HSTATE SharedM T \<and> nextReqIs CleanEvict T 0 \<longrightarrow> \<not> CSTATE MIA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i534: "(HSTATE SharedM T \<and> nextReqIs CleanEvict T 1 \<longrightarrow> \<not> CSTATE MIA T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i535: "(CSTATE Shared T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> htddatas2 T \<noteq> [] \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> htddatas2 T = [])) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i536: "(CSTATE Shared T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> htddatas1 T \<noteq> [] \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> htddatas1 T = []))"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i537: "(nextReqIs DirtyEvict T 0 \<longrightarrow> nextEvict T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i538: "(nextReqIs DirtyEvict T 1 \<longrightarrow> nextEvict T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i539: "(nextReqIs DirtyEvict T 0 \<and> HSTATE InvalidM T \<longrightarrow> \<not> nextDTHDataFrom 1 T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i540: "(nextReqIs DirtyEvict T 1 \<and> HSTATE InvalidM T \<longrightarrow> \<not> nextDTHDataFrom 0 T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i541: "(nextReqIs DirtyEvict T 0 \<and> HSTATE InvalidM T \<longrightarrow> \<not> CSTATE ISDI T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i542: "(nextReqIs DirtyEvict T 1 \<and> HSTATE InvalidM T \<longrightarrow> \<not> CSTATE ISDI T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i543: "(nextReqIs DirtyEvict T 0 \<and> HSTATE InvalidM T \<longrightarrow> (reqresps2 T = [] \<or> nextReqRespStateIs Invalid (reqresps2 T))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i544: "(nextReqIs DirtyEvict T 1 \<and> HSTATE InvalidM T \<longrightarrow> (reqresps1 T = [] \<or> nextReqRespStateIs Invalid (reqresps1 T)))"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i545: "(CSTATE SMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not>(CSTATE ISA T 1 \<or> nextHTDDataPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i546: "(CSTATE SMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not>(CSTATE ISA T 0 \<or> nextHTDDataPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i547: "(CSTATE SMD T 0 \<and> nextHTDDataPending T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MAD T \<and> CSTATE IMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i548: "(CSTATE SMD T 1 \<and> nextHTDDataPending T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MAD T \<and> CSTATE IMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i549: "(CSTATE SMD T 0 \<and> nextHTDDataPending T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T \<and> CSTATE ISAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i550: "(CSTATE SMD T 1 \<and> nextHTDDataPending T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T \<and> CSTATE ISAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i551: "(CSTATE SMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i552: "(CSTATE SMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i553: "(CSTATE SMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i554: "(CSTATE SMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> nextReqIs DirtyEvict T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i555: "((nextReqIs CleanEvictNoData T 0 \<or> nextReqIs CleanEvict T 0) \<longrightarrow> (CSTATE SIA T 0 \<or> CSTATE IIA T 0 \<or> CSTATE SIAC T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i556: "((nextReqIs CleanEvictNoData T 1 \<or> nextReqIs CleanEvict T 1) \<longrightarrow> (CSTATE SIA T 1 \<or> CSTATE IIA T 1 \<or> CSTATE SIAC T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i557: "((CSTATE Shared T 0 \<or> CSTATE Shared T 1) \<longrightarrow> \<not> HSTATE MD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i558: "(CSTATE Shared T 0 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i559: "(CSTATE Shared T 1 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i560: "((nextReqIs CleanEvictNoData T 0 \<or> nextReqIs CleanEvict T 0) \<longrightarrow> nextEvict T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i561: "((nextReqIs CleanEvictNoData T 1 \<or> nextReqIs CleanEvict T 1) \<longrightarrow> nextEvict T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i562: "((nextReqIs CleanEvictNoData T 0 \<or> nextReqIs CleanEvict T 0) \<longrightarrow> \<not> CSTATE ISDI T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i563: "((nextReqIs CleanEvictNoData T 1 \<or> nextReqIs CleanEvict T 1) \<longrightarrow> \<not> CSTATE ISDI T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i564: "((nextReqIs CleanEvictNoData T 0 \<or> nextReqIs CleanEvict T 0) \<longrightarrow> \<not> CSTATE MIA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i565: "((nextReqIs CleanEvictNoData T 1 \<or> nextReqIs CleanEvict T 1) \<longrightarrow> \<not> CSTATE MIA T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i566: "(CSTATE IIA T 0 \<and> HSTATE SharedM T \<longrightarrow> reqs2 T = [] \<or> nextReqIs CleanEvict T 1 \<or> nextReqIs CleanEvictNoData T 1 \<or> nextReqIs RdOwn T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i567: "(CSTATE IIA T 1 \<and> HSTATE SharedM T \<longrightarrow> reqs1 T = [] \<or> nextReqIs CleanEvict T 0 \<or> nextReqIs CleanEvictNoData T 0 \<or> nextReqIs RdOwn T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i568: "(CSTATE IIA T 0 \<and> HSTATE SharedM T \<longrightarrow> CSTATE Shared T 1 \<or> CSTATE SIA T 1 \<or> CSTATE SMAD T 1 \<or> CSTATE ISAD T 1 \<and> nextGOPending T 1 \<and> nextHTDDataPending T 1 \<or> CSTATE ISA T 1 \<and> nextGOPending T 1 \<or> CSTATE ISD T 1 \<and> nextHTDDataPending T 1 \<or> CSTATE SIAC T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i569: "(CSTATE IIA T 1 \<and> HSTATE SharedM T \<longrightarrow> CSTATE Shared T 0 \<or> CSTATE SIA T 0 \<or> CSTATE SMAD T 0 \<or> CSTATE ISAD T 0 \<and> nextGOPending T 0 \<and> nextHTDDataPending T 0 \<or> CSTATE ISA T 0 \<and> nextGOPending T 0 \<or> CSTATE ISD T 0 \<and> nextHTDDataPending T 0 \<or> CSTATE SIAC T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i570: "(CSTATE IIA T 1 \<and> HSTATE InvalidM T \<and> nextReqIs RdShared T 0 \<longrightarrow> CSTATE ISAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i571: "(CSTATE IIA T 0 \<and> HSTATE InvalidM T \<and> nextReqIs RdShared T 1 \<longrightarrow> CSTATE ISAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i572: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0 \<and> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE SMD T 0 \<and>  \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1 \<and> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE SMD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i573: "(HSTATE InvalidM T \<longrightarrow> \<not> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0)) \<and> \<not> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i574: "(nextGOPendingIs GO_WritePull T 0 \<or> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> \<not> HSTATE InvalidM T)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i575: "(CSTATE MIA T 0 \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1 \<and> \<not> nextHTDDataPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i576: "(CSTATE MIA T 1 \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0 \<and> \<not> nextHTDDataPending T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i577: "(nextGOPendingIs GO_WritePull T 0 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i578: "(nextGOPendingIs GO_WritePull T 1 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i579: "((CSTATE IMA T 0 \<or> CSTATE SMA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0) \<longrightarrow> (HSTATE MA T \<or> HSTATE ModifiedM T \<or> HSTATE MB T \<or> HSTATE MAD T \<or> HSTATE SAD T)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i580: "((CSTATE IMA T 1 \<or> CSTATE SMA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1) \<longrightarrow> (HSTATE MA T \<or> HSTATE ModifiedM T \<or> HSTATE MB T \<or> HSTATE MAD T \<or> HSTATE SAD T))"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i581: "(CSTATE MIA T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = [] \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i582: "(CSTATE MIA T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = [] \<and> htddatas2 T = [])"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i583: "(CSTATE MIA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i584: "(CSTATE MIA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i585: "(CSTATE MIA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i586: "(CSTATE MIA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i587: "((HSTATE InvalidM T \<or> HSTATE SharedM T \<or> HSTATE ModifiedM T) \<longrightarrow> (\<not> nextGOPendingIs GO_WritePull T 0) \<and> (\<not> nextGOPendingIs GO_WritePull T 1))"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i588: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePullDrop T 0 \<and> CSTATE IIA T 1 \<longrightarrow> HSTATE InvalidM T \<or> HSTATE IB T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i589: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePullDrop T 1 \<and> CSTATE IIA T 0 \<longrightarrow> HSTATE InvalidM T \<or> HSTATE IB T)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i590: "(HSTATE InvalidM T \<longrightarrow> dthdatas1 T = [] \<and> dthdatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i591: "(CSTATE Invalid T 0 \<longrightarrow> \<not> nextSnoopIs SnpInv T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i592: "(CSTATE Invalid T 1 \<longrightarrow> \<not> nextSnoopIs SnpInv T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i593: "(CSTATE Modified T 0 \<longrightarrow> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i594: "(CSTATE Modified T 1 \<longrightarrow> \<not> CSTATE MIA T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i595: "(HSTATE MA T \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> htddatas2 T \<noteq> [] \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i596: "(HSTATE MA T \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> htddatas1 T \<noteq> [] \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i597: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i598: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i599: "(HSTATE MA T \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i600: "(HSTATE MA T \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i601: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> CSTATE ISD T 0 \<and> \<not> CSTATE ISA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i602: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> CSTATE ISD T 1 \<and> \<not> CSTATE ISA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i603: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> CSTATE SMD T 0 \<and> \<not> CSTATE SMA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i604: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> CSTATE SMD T 1 \<and> \<not> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i605: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE IMA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i606: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE IMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i607: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> (CSTATE ISAD T 0 \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i608: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> (CSTATE IMAD T 0 \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i609: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> (CSTATE SMAD T 0 \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i610: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> (CSTATE ISAD T 1 \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i611: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> (CSTATE IMAD T 1 \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i612: "(HSTATE InvalidM T \<or> HSTATE ID T \<longrightarrow> \<not> (CSTATE SMAD T 1 \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i613: "(CSTATE ISD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> htddatas2 T \<noteq> []) \<or> ((CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> htddatas2 T = [])) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i614: "(CSTATE ISD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> htddatas1 T \<noteq> []) \<or> ((CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> htddatas1 T = [])) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i615: "(CSTATE ISA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> htddatas2 T \<noteq> []) \<or> ((CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> htddatas2 T = [])) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i616: "(CSTATE ISA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> htddatas1 T \<noteq> []) \<or> ((CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> htddatas1 T = [])) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i617: "(CSTATE ISAD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> htddatas2 T \<noteq> []) \<or> ((CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> htddatas2 T = [])) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i618: "(CSTATE ISAD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> htddatas1 T \<noteq> []) \<or> ((CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> htddatas1 T = [])) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i619: "(CSTATE IMAD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i620: "(CSTATE IMAD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i621: "(CSTATE IMD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i622: "(CSTATE IMD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i623: "(CSTATE IMA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i624: "(CSTATE IMA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i625: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i626: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i627: "(CSTATE SMD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i628: "(CSTATE SMD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i629: "(CSTATE SMA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i630: "(CSTATE SMA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i631: "(CSTATE ISD T 0 \<or> CSTATE ISA T 0 \<longrightarrow> \<not> HSTATE MD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i632: "(CSTATE ISD T 1 \<or> CSTATE ISA T 1 \<longrightarrow> \<not> HSTATE MD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i633: "(CSTATE ISAD T 0 \<and> (nextHTDDataPending T 0 \<or> nextGOPending T 0) \<longrightarrow> \<not> HSTATE MD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i634: "(CSTATE ISAD T 1 \<and> (nextHTDDataPending T 1 \<or> nextGOPending T 1) \<longrightarrow> \<not> HSTATE MD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i635: "(CSTATE ISD T 0 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i636: "(CSTATE ISD T 1 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i637: "(CSTATE ISA T 0 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i638: "(CSTATE ISA T 1 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i639: "(CSTATE IMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> (CSTATE ISAD T 1 \<and> nextGOPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i640: "(CSTATE IMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> (CSTATE ISAD T 0 \<and> nextGOPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i641: "(CSTATE IMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> CSTATE ISA T 1 \<and> \<not> nextHTDDataPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i642: "(CSTATE IMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> nextHTDDataPending T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i643: "(CSTATE IMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i644: "(CSTATE IMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> CSTATE Shared T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i645: "(CSTATE ISA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i646: "(CSTATE ISA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i647: "(CSTATE ISAD T 0 \<and> nextGOPending T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i648: "(CSTATE ISAD T 1 \<and> nextGOPending T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i649: "(CSTATE ISAD T 0 \<and> nextHTDDataPending T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MA T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i650: "(CSTATE ISAD T 1 \<and> nextHTDDataPending T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MA T)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i651: "(HSTATE SharedM T \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i652: "(HSTATE SharedM T \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i653: "(HSTATE SharedM T \<longrightarrow> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE SMD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i654: "(HSTATE SharedM T \<longrightarrow> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE SMD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i655: "(HSTATE SharedM T \<longrightarrow> \<not> (CSTATE IMAD T 0 \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i656: "(HSTATE SharedM T \<longrightarrow> \<not> (CSTATE IMAD T 1 \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i657: "(HSTATE SharedM T \<longrightarrow> \<not> (CSTATE SMAD T 0 \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i658: "(HSTATE SharedM T \<longrightarrow> \<not> (CSTATE SMAD T 1 \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i659: "(HSTATE SharedM T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i660: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i661: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE ISD T 0 \<and> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE SMD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i662: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE ISD T 1 \<and> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE SMD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i663: "(HSTATE InvalidM T \<longrightarrow> \<not> (CSTATE ISAD T 0 \<and> nextGOPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i664: "(HSTATE InvalidM T \<longrightarrow> \<not> (CSTATE ISAD T 1 \<and> nextGOPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i665: "(HSTATE InvalidM T \<longrightarrow> \<not> (CSTATE IMAD T 0 \<and> nextGOPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i666: "(HSTATE InvalidM T \<longrightarrow> \<not> (CSTATE IMAD T 1 \<and> nextGOPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i667: "(HSTATE InvalidM T \<longrightarrow> \<not> (CSTATE SMAD T 0 \<and> nextGOPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i668: "(HSTATE InvalidM T \<longrightarrow> \<not> (CSTATE SMAD T 1 \<and> nextGOPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i669: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i670: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE ISA T 1 \<and> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i671: "(HSTATE InvalidM T \<longrightarrow> \<not> nextHTDDataPending T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i672: "(HSTATE InvalidM T \<longrightarrow> \<not> nextHTDDataPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i673: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE Shared T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i674: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i675: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE Modified T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i676: "(CSTATE IMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> snpresps2 T = [] \<and> reqresps1 T = [] \<and> snps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i677: "(CSTATE IMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> snpresps1 T = [] \<and> reqresps2 T = [] \<and> snps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i678: "(CSTATE IMAD T 0 \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<longrightarrow> snpresps2 T = [] \<and> snps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i679: "(CSTATE IMAD T 1 \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<longrightarrow> snpresps1 T = [] \<and> snps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i680: "(CSTATE IMD T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> CSTATE ISAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i681: "(CSTATE IMD T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> CSTATE ISAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i682: "(CSTATE IMA T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> CSTATE ISAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i683: "(CSTATE IMA T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> CSTATE ISAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i684: "(CSTATE IMAD T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> CSTATE ISAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i685: "(CSTATE IMAD T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> CSTATE ISAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i686: "(CSTATE IMD T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i687: "(CSTATE IMD T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i688: "(CSTATE IMA T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i689: "(CSTATE IMA T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i690: "(CSTATE IMAD T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i691: "(CSTATE IMD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i692: "(CSTATE IMD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i693: "(CSTATE IMAD T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i694: "(CSTATE IMAD T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i695: "(CSTATE IMA T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> HSTATE MAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i696: "(CSTATE IMA T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> HSTATE MAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i697: "(CSTATE IMAD T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i698: "(HSTATE IB T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1 \<and> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i699: "(HSTATE IB T \<and> nextReqIs RdOwn T 0 \<longrightarrow> CSTATE IMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i700: "(HSTATE IB T \<and> nextReqIs RdOwn T 1 \<longrightarrow> CSTATE IMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i701: "(HSTATE SB T \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Modified T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i702: "(HSTATE SB T \<longrightarrow> length (dthdatas1 T) \<le> 1 \<and> length (dthdatas2 T) \<le> 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i703: "(HSTATE IB T \<longrightarrow> length (dthdatas1 T) \<le> 1 \<and> length (dthdatas2 T) \<le> 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i704: "(HSTATE SB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE IIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i705: "(HSTATE SB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE IIA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i706: "(HSTATE MB T \<longrightarrow> length (dthdatas1 T) \<le> 1 \<and> length (dthdatas2 T) \<le> 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i707: "(HSTATE SB T \<and> nextDTHDataFrom 0 T \<longrightarrow> dthdatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i708: "(HSTATE SB T \<and> nextDTHDataFrom 1 T \<longrightarrow> dthdatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i709: "(HSTATE IB T \<and> nextDTHDataFrom 0 T \<longrightarrow> dthdatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i710: "(HSTATE IB T \<and> nextDTHDataFrom 1 T \<longrightarrow> dthdatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i711: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> dthdatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i712: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> dthdatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i713: "(HSTATE SB T \<longrightarrow> snps2 T = [] \<and> snps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i714: "(HSTATE IB T \<longrightarrow> snps2 T = [] \<and> snps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i715: "(HSTATE MB T \<longrightarrow> snps2 T = [] \<and> snps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i716: "(HSTATE SB T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i717: "(HSTATE SB T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i718: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i719: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i720: "(HSTATE IB T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i721: "(HSTATE IB T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i722: "(HSTATE SB T \<longrightarrow> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE SMD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i723: "(HSTATE SB T \<longrightarrow> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE SMD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i724: "(HSTATE IB T \<longrightarrow> \<not> CSTATE IMD T 0 \<and> \<not> CSTATE SMD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i725: "(HSTATE IB T \<longrightarrow> \<not> CSTATE IMD T 1 \<and> \<not> CSTATE SMD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i726: "(HSTATE SharedM T \<and> lastSharer T \<and> nextReqIs CleanEvictNoData T 0 \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i727: "(HSTATE SharedM T \<and> lastSharer T \<and> nextReqIs CleanEvictNoData T 1 \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i728: "(HSTATE SharedM T \<and> lastSharer T \<and> nextReqIs CleanEvictNoData T 0 \<longrightarrow> \<not> (CSTATE ISAD T 1 \<and> nextGOPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i729: "(HSTATE SharedM T \<and> lastSharer T \<and> nextReqIs CleanEvictNoData T 1 \<longrightarrow> \<not> (CSTATE ISAD T 0 \<and> nextGOPending T 0))"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i730: "(CSTATE ISAD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> snpresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i731: "(CSTATE ISAD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> snpresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i732: "(HSTATE SAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> snpresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i733: "(HSTATE SAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> snpresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i734: "(CSTATE ISAD T 0 \<and> nextHTDDataPending T 0 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i735: "(CSTATE ISAD T 1 \<and> nextHTDDataPending T 1 \<and> HSTATE MA T \<longrightarrow> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i736: "(HSTATE ModifiedM T \<longrightarrow> (\<not> CSTATE SIA T 0 \<or> nextGOPendingIs GO_WritePullDrop T 0) \<and> (\<not> CSTATE SIA T 1 \<or> nextGOPendingIs GO_WritePullDrop T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i737: "(HSTATE MA T \<and> snpresps1 T \<noteq> [] \<longrightarrow> \<not> CSTATE SIA T 0 \<and> \<not> CSTATE SIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i738: "(HSTATE MA T \<and> snpresps2 T \<noteq> [] \<longrightarrow> \<not> CSTATE SIA T 0 \<and> \<not> CSTATE SIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i739: "(HSTATE MD T \<longrightarrow> \<not> CSTATE SIA T 0 \<and> \<not> CSTATE SIA T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i740: "(CSTATE MIA T 0 \<longrightarrow> \<not> (CSTATE IMAD T 1 \<and> nextGOPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i741: "(CSTATE MIA T 1 \<longrightarrow> \<not> (CSTATE IMAD T 0 \<and> nextGOPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i742: "(CSTATE MIA T 0 \<longrightarrow> \<not> (CSTATE SMAD T 1 \<and> nextGOPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i743: "(CSTATE MIA T 1 \<longrightarrow> \<not> (CSTATE SMAD T 0 \<and> nextGOPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i744: "(HSTATE ModifiedM T \<and> nextReqIs RdOwn T 0 \<longrightarrow> CSTATE IMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i745: "(HSTATE ModifiedM T \<and> nextReqIs RdOwn T 1 \<longrightarrow> CSTATE IMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i746: "(HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE ISA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i747: "(HSTATE MD T \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE ISA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i748: "(HSTATE MA T \<and> snpresps1 T \<noteq> [] \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE ISA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i749: "(HSTATE MA T \<and> snpresps2 T \<noteq> [] \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE ISA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i750: "(CSTATE MIA T 0 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE SMA T 1 \<and> \<not> CSTATE SMD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i751: "(CSTATE MIA T 1 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE SMA T 0 \<and> \<not> CSTATE SMD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i752: "(CSTATE MIA T 0 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE IMD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i753: "(CSTATE MIA T 1 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE IMD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i754: "(CSTATE MIA T 0 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> (CSTATE IMAD T 1 \<and> (nextGOPending T 1 \<or> nextHTDDataPending T 1))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i755: "(CSTATE MIA T 1 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> (CSTATE IMAD T 0 \<and> (nextGOPending T 0 \<or> nextHTDDataPending T 0))) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i756: "(CSTATE MIA T 0 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE SMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i757: "(CSTATE MIA T 1 \<and> HSTATE ModifiedM T \<longrightarrow> \<not> CSTATE SMAD T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i758: "(CSTATE IMD T 1 \<longrightarrow> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i759: "(CSTATE IMD T 0 \<longrightarrow> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i760: "(HSTATE IB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i761: "(HSTATE IB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i762: "(HSTATE IB T \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE ISD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i763: "(HSTATE IB T \<longrightarrow> \<not> CSTATE ISA T 1 \<and> \<not> CSTATE ISD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i764: "(HSTATE IB T \<longrightarrow> \<not> CSTATE SMA T 0 \<and> \<not> CSTATE SMD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i765: "(HSTATE IB T \<longrightarrow> \<not> CSTATE SMA T 1 \<and> \<not> CSTATE SMD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i766: "(HSTATE IB T \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE IMD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i767: "(HSTATE IB T \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE IMD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i768: "(HSTATE IB T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i769: "(HSTATE IB T \<longrightarrow> \<not> nextHTDDataPending T 0 \<and> \<not> nextHTDDataPending T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i770: "(HSTATE ID T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i771: "(HSTATE ID T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i772: "(HSTATE ID T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i773: "(HSTATE ID T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i774: "(HSTATE ID T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextHTDDataPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i775: "(HSTATE ID T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextHTDDataPending T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i776: "(HSTATE ModifiedM T \<and> nextReqIs RdShared T 0 \<longrightarrow> \<not> CSTATE ISDI T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i777: "(HSTATE ModifiedM T \<and> nextReqIs RdShared T 1 \<longrightarrow> \<not> CSTATE ISDI T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i778: "(HSTATE SD T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i779: "(HSTATE SAD T \<and> snpresps1 T \<noteq> [] \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i780: "(HSTATE SAD T \<and> snpresps2 T \<noteq> [] \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i781: "(HSTATE MD T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i782: "(snpresps1 T \<noteq> [] \<and> HSTATE MAD T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i783: "(snpresps2 T \<noteq> [] \<and> HSTATE MAD T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i784: "(CSTATE IMD T 0 \<and> HSTATE MD T \<longrightarrow> snpresps1 T = [] \<and> snps1 T = [] \<and> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i785: "(CSTATE IMD T 1 \<and> HSTATE MD T \<longrightarrow> snpresps2 T = [] \<and> snps2 T = [] \<and> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i786: "(nextDTHDataFrom 0 T \<and> HSTATE MD T \<and> nextReqIs RdOwn T 0 \<longrightarrow> CSTATE IMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i787: "(nextDTHDataFrom 1 T \<and> HSTATE MD T \<and> nextReqIs RdOwn T 1 \<longrightarrow> CSTATE IMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i788: "(HSTATE SAD T \<and> nextSnpRespIs RspSFwdM T 0 \<longrightarrow> \<not> CSTATE Modified T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i789: "(HSTATE SAD T \<and> nextSnpRespIs RspSFwdM T 1 \<longrightarrow> \<not> CSTATE Modified T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i790: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE Modified T 1 \<and> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i791: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE Modified T 0 \<and> \<not> CSTATE Shared T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i792: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> dthdatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i793: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> dthdatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i794: "(HSTATE SA T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i795: "(HSTATE SharedM T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i796: "(CSTATE IIA T 0 \<and> HSTATE SA T \<longrightarrow> CSTATE ISAD T 1 \<and> nextHTDDataPending T 1 \<or> CSTATE ISA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i797: "(CSTATE IIA T 1 \<and> HSTATE SA T \<longrightarrow> CSTATE ISAD T 0 \<and> nextHTDDataPending T 0 \<or> CSTATE ISA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i798: "(HSTATE MA T \<and> snpresps1 T \<noteq> [] \<longrightarrow> htddatas1 T = [] \<or> CSTATE ISDI T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i799: "(HSTATE MA T \<and> snpresps2 T \<noteq> [] \<longrightarrow> htddatas2 T = [] \<or> CSTATE ISDI T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i800: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> (CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i801: "(HSTATE MB T \<longrightarrow> \<not> CSTATE ISD T 0 \<and> \<not> CSTATE ISD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i802: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> CSTATE Invalid T 0 \<or> CSTATE ISAD T 0 \<or> CSTATE IMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i803: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> CSTATE Invalid T 1 \<or> CSTATE ISAD T 1 \<or> CSTATE IMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i804: "(HSTATE MB T \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i805: "(HSTATE MB T \<longrightarrow> snpresps1 T = [] \<and> snpresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i806: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i807: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i808: "(HSTATE MB T \<longrightarrow> \<not> CSTATE SIA T 0 \<and> \<not> CSTATE SIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i809: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextReqIs RdOwn T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i810: "(HSTATE MB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextReqIs RdOwn T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i811: "(HSTATE MB T \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE ISA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i812: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<and> HSTATE SB T \<longrightarrow> \<not> CSTATE IIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i813: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<and> HSTATE SB T \<longrightarrow> \<not> CSTATE IIA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i814: "(HSTATE IB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i815: "(HSTATE IB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i816: "(HSTATE SB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i817: "(HSTATE SB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i818: "(HSTATE SB T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i819: "(HSTATE SB T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i820: "(HSTATE ID T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i821: "(HSTATE ID T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i822: "(CSTATE Modified T 0 \<longrightarrow> \<not> nextReqIs RdOwn T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i823: "(CSTATE Modified T 1 \<longrightarrow> \<not> nextReqIs RdOwn T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i824: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE ISD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i825: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE ISD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i826: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> (CSTATE ISAD T 1 \<and> nextGOPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i827: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> (CSTATE ISAD T 0 \<and> nextGOPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i828: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> (CSTATE IMA T 1 \<and> nextGOPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i829: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> (CSTATE IMA T 0 \<and> nextGOPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i830: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> (CSTATE ISA T 1 \<and> nextGOPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i831: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> (CSTATE ISA T 0 \<and> nextGOPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i832: "((CSTATE ISAD T 0 \<and> nextGOPending T 0) \<or> CSTATE ISA T 0 \<or> ( nextHTDDataPending T 0) \<or> CSTATE Shared T 0 \<longrightarrow> \<not> (CSTATE IMA T 1 \<and> nextGOPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i833: "((CSTATE ISAD T 1 \<and> nextGOPending T 1) \<or> CSTATE ISA T 1 \<or> ( nextHTDDataPending T 1) \<or> CSTATE Shared T 1 \<longrightarrow> \<not> (CSTATE IMA T 0 \<and> nextGOPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i834: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> snps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i835: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> snps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i836: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE MIA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i837: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i838: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE SIA T 0 \<and> \<not> CSTATE SIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i839: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE SIA T 1 \<and> \<not> CSTATE SIA T 0)  "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i840: "(CSTATE Modified T 0 \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1 \<and> (htddatas2 T = [] \<or> CSTATE ISDI T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i841: "(CSTATE Modified T 1 \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0 \<and> (htddatas1 T = [] \<or> CSTATE ISDI T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i842: "(CSTATE Modified T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i843: "(CSTATE Modified T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i844: "(CSTATE Modified T 0 \<longrightarrow> snpresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i845: "(CSTATE Modified T 1 \<longrightarrow> snpresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i846: "(CSTATE SMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> (CSTATE ISAD T 1 \<and> nextGOPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i847: "(CSTATE SMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> (CSTATE ISAD T 0 \<and> nextGOPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i848: "(CSTATE SMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE ISA T 1 \<and> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i849: "(CSTATE SMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE ISA T 0 \<and> \<not> CSTATE Shared T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i850: "(CSTATE SMA T 0 \<and> nextGOPending T 0 \<longrightarrow> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i851: "(CSTATE SMA T 1 \<and> nextGOPending T 1 \<longrightarrow> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i852: "(CSTATE SMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE IMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i853: "(CSTATE SMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE IMA T 0)  "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i854: "(CSTATE Invalid T 0 \<longrightarrow> snps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i855: "(CSTATE Invalid T 1 \<longrightarrow> snps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i856: "(HSTATE SD T \<and> nextDTHDataFrom 0 T \<longrightarrow> CSTATE ISD T 1 \<or> CSTATE ISAD T 1 \<and> nextGOPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i857: "(HSTATE SD T \<and> nextDTHDataFrom 1 T \<longrightarrow> CSTATE ISD T 0 \<or> CSTATE ISAD T 0 \<and> nextGOPending T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i858: "(HSTATE SAD T \<longrightarrow> \<not> nextGOPendingIs GO_WritePull T 0 \<and> \<not> nextGOPendingIs GO_WritePull T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i859: "(HSTATE SAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i860: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<and> nextHTDDataPending T 0 \<and> nextSnoopIs SnpData T 0 \<longrightarrow> HSTATE SAD T \<and> CSTATE ISAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i861: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<and> nextHTDDataPending T 1 \<and> nextSnoopIs SnpData T 1 \<longrightarrow> HSTATE SAD T \<and> CSTATE ISAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i862: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i863: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i864: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> snps2 T = [] \<and> snpresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i865: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> snps1 T = [] \<and> snpresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i866: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<and> HSTATE IB T \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i867: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<and> HSTATE IB T \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i868: "(CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<and> HSTATE SB T \<longrightarrow> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i869: "(CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<and> HSTATE SB T \<longrightarrow> \<not> CSTATE MIA T 0)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i870: "(HSTATE InvalidM T \<and> nextReqIs DirtyEvict T 0 \<longrightarrow> CSTATE IIA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i871: "(HSTATE InvalidM T \<and> nextReqIs DirtyEvict T 1 \<longrightarrow> CSTATE IIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i872: "(HSTATE InvalidM T \<longrightarrow> (\<not> CSTATE SIA T 0 \<or> nextGOPendingIs GO_WritePullDrop T 0) \<and> (\<not> CSTATE SIA T 1 \<or> nextGOPendingIs GO_WritePullDrop T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i873: "(HSTATE MA T  \<and> nextSnpRespIs RspIFwdM T 0 \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i874: "(HSTATE MA T  \<and> nextSnpRespIs RspIFwdM T 1 \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0))  "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i875: "(HSTATE MB T \<and> nextDTHDataFrom 0 T \<longrightarrow> (CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i876: "(HSTATE MB T \<and> CSTATE IIA T 0 \<longrightarrow> (CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i877: "(HSTATE MB T \<and> CSTATE IIA T 1 \<longrightarrow> (CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i883: "length (dthdatas1 T) \<le> 1"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i884: "length (dthdatas2 T) \<le> 1"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i885: "(HSTATE IB T \<and> CSTATE IIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i886: "(HSTATE IB T \<and> CSTATE IIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i887: "(HSTATE MAD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i888: "(HSTATE MAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i889: "(HSTATE MA T \<and> snpresps1 T \<noteq> [] \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i890: "(HSTATE MA T \<and> snpresps2 T \<noteq> [] \<longrightarrow> \<not> CSTATE Shared T 0 \<and> \<not> CSTATE Shared T 1)  "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i891: "(CSTATE IMAD T 0 \<and> nextGOPending T 0 \<and> HSTATE MD T \<longrightarrow> snpresps1 T = [] \<and> snps1 T = [] \<and> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i892: "(CSTATE IMAD T 1 \<and> nextGOPending T 1 \<and> HSTATE MD T \<longrightarrow> snpresps2 T = [] \<and> snps2 T = [] \<and> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i893: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1 \<and> (htddatas2 T = [] \<or> CSTATE ISDI T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i894: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0 \<and> (htddatas1 T = [] \<or> CSTATE ISDI T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i895: "(CSTATE SMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1 \<and> (htddatas2 T = [] \<or> CSTATE ISDI T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i896: "(CSTATE SMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0 \<and> (htddatas1 T = [] \<or> CSTATE ISDI T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i897: "(CSTATE Modified T 0 \<longrightarrow> dthdatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i898: "(CSTATE Modified T 1 \<longrightarrow> dthdatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i899: "(nextSnpRespIs RspIHitSE T 0 \<longrightarrow> \<not> CSTATE IMA T 0 \<and> \<not> CSTATE SMA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i900: "(nextSnpRespIs RspIHitSE T 1 \<longrightarrow> \<not> CSTATE IMA T 1 \<and> \<not> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i901: "(CSTATE IMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i902: "(CSTATE IMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i903: "(CSTATE SMD T 0 \<and> nextHTDDataPending T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i904: "(CSTATE SMD T 1 \<and> nextHTDDataPending T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i905: "(CSTATE IMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i906: "(CSTATE IMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i907: "(CSTATE SMA T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i908: "(CSTATE SMA T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i909: "(CSTATE IMAD T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i910: "(CSTATE IMAD T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i911: "(HSTATE MD T \<and> nextDTHDataFrom 0 T \<longrightarrow> \<not> CSTATE SMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i912: "(HSTATE MD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE SMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i913: "(CSTATE SMAD T 0 \<and> nextGOPending T 0 \<longrightarrow> \<not> CSTATE SMAD T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i914: "(CSTATE SMAD T 1 \<and> nextGOPending T 1 \<longrightarrow> \<not> CSTATE SMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i915: "(HSTATE InvalidM T \<longrightarrow> \<not> CSTATE SMAD T 1 \<and> \<not> CSTATE SMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i916: "(HSTATE IB T \<longrightarrow> \<not> CSTATE SMAD T 1 \<and> \<not> CSTATE SMAD T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i917: "(HSTATE ID T \<longrightarrow> \<not> CSTATE SMAD T 1 \<and> \<not> CSTATE SMAD T 0)  "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i918: "(HSTATE MA T \<and> nextSnpRespIs RspIHitSE T 0 \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i919: "(HSTATE MA T \<and> nextSnpRespIs RspIHitSE T 1 \<longrightarrow> \<not> nextReqIs DirtyEvict T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i920: "(CSTATE Modified T 0 \<longrightarrow> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i921: "(CSTATE Modified T 1 \<longrightarrow> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i922: "(HSTATE ModifiedM T \<longrightarrow> snps1 T = [] \<and> snps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i923: "(CSTATE SMAD T 0 \<and> nextHTDDataPending T 0 \<and> nextSnoopIs SnpInv T 0 \<longrightarrow> CSTATE IMAD T 1 \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i924: "(CSTATE SMAD T 1 \<and> nextHTDDataPending T 1 \<and> nextSnoopIs SnpInv T 1 \<longrightarrow> CSTATE IMAD T 0 \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i925: "(CSTATE SMAD T 1 \<and> HSTATE MA T \<and> nextSnpRespIs RspIFwdM T 0 \<longrightarrow> \<not> nextReqIs DirtyEvict T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i926: "(CSTATE SMAD T 0 \<and> HSTATE MA T \<and> nextSnpRespIs RspIFwdM T 1 \<longrightarrow> \<not> nextReqIs DirtyEvict T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i927: "(CSTATE SIAC T 0 \<and> HSTATE SA T \<longrightarrow> \<not> CSTATE Modified T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i928: "(CSTATE SIAC T 1 \<and> HSTATE SA T \<longrightarrow> \<not> CSTATE Modified T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i929: "(CSTATE SIAC T 0 \<longrightarrow> \<not> nextHTDDataPending T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i930: "(CSTATE SIAC T 1 \<longrightarrow> \<not> nextHTDDataPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i931: "((CSTATE SIAC T 0 \<and> nextGOPending T 0 \<and> nextGOPendingState Invalid T 0) --> snps2 T = [] \<and> snpresps2 T = [] \<and> htddatas1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i932: "((CSTATE SIAC T 1 \<and> nextGOPending T 1 \<and> nextGOPendingState Invalid T 1) --> snps1 T = [] \<and> snpresps1 T = [] \<and> htddatas2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i933: "((CSTATE SIAC T 0 \<and> nextGOPending T 0 \<and> nextGOPendingState Invalid T 0) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or> (CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i934: "((CSTATE SIAC T 1 \<and> nextGOPending T 1 \<and> nextGOPendingState Invalid T 1) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or> (CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i935: "((CSTATE SIAC T 0 \<and> nextGOPending T 0 \<and> nextGOPendingState Invalid T 0) \<and> HSTATE MD T \<longrightarrow> dthdatas1 T \<noteq> []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i936: "((CSTATE SIAC T 1 \<and> nextGOPending T 1 \<and> nextGOPendingState Invalid T 1) \<and> HSTATE MD T \<longrightarrow> dthdatas2 T \<noteq> []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i937: "((CSTATE SIAC T 0 \<and> nextGOPending T 0 \<and> nextGOPendingState Invalid T 0) \<and> HSTATE MA T \<longrightarrow>(CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i938: "((CSTATE SIAC T 1 \<and> nextGOPending T 1 \<and> nextGOPendingState Invalid T 1) \<and> HSTATE MA T \<longrightarrow>(CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i939: "((CSTATE SIAC T 0 \<and> nextGOPending T 0 \<and> nextGOPendingState Invalid T 0) --> snps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i940: "((CSTATE SIAC T 1 \<and> nextGOPending T 1 \<and> nextGOPendingState Invalid T 1) --> snps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i941: "((CSTATE SIAC T 0 \<and> nextGOPending T 0 \<and> nextGOPendingState Invalid T 0) --> reqs1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i942: "((CSTATE SIAC T 1 \<and> nextGOPending T 1 \<and> nextGOPendingState Invalid T 1) --> reqs2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i943: "(HSTATE MA T \<and> nextSnpRespIs RspIFwdM T 0 \<longrightarrow> \<not> nextHTDDataPending T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i944: "(HSTATE MA T \<and> nextSnpRespIs RspIFwdM T 1 \<longrightarrow> \<not> nextHTDDataPending T 1)"
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i945: "(HSTATE SB T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i946: "(nextReqIs CleanEvictNoData T 0 \<longrightarrow> CSTATE SIAC T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i947: "(nextReqIs CleanEvictNoData T 1 \<longrightarrow> CSTATE SIAC T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i948: "(nextSnpRespIs RspIHitSE T 0 \<longrightarrow> \<not> nextDTHDataFrom 0 T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i949: "(nextSnpRespIs RspIHitSE T 1 \<longrightarrow> \<not> nextDTHDataFrom 1 T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i950: "(nextSnpRespIs RspIFwdM T 0 \<longrightarrow> \<not> nextReqIs CleanEvictNoData T 0) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i951: "(nextSnpRespIs RspIFwdM T 1 \<longrightarrow> \<not> nextReqIs CleanEvictNoData T 1)  "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i952: "(CSTATE SMA T 0 \<and> nextSnoopIs SnpData T 0 \<and> nextGOPending T 0 \<longrightarrow> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i953: "(CSTATE SMA T 1 \<and> nextSnoopIs SnpData T 1 \<and> nextGOPending T 1 \<longrightarrow> HSTATE SAD T) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i954: "((CSTATE SIA T 0 \<and> nextGOPendingIs GO_WritePullDrop T 0) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or>(CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i955: "((CSTATE SIA T 1 \<and> nextGOPendingIs GO_WritePullDrop T 1) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or>(CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0)   "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i956: "((CSTATE SIAC T 0 \<and> nextGOPendingIs GO T 0 \<and> nextGOPendingState Invalid T 0 \<and> \<not> CSTATE IIA T 1 \<and> GTS T 1) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 1 \<or> CSTATE MIA T 1 \<or> (CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<and> nextGOPending T 1 \<or>(CSTATE IMA T 1 \<or> CSTATE SMA T 1) \<and> nextGOPending T 1 \<or> (CSTATE IMD T 1 \<or> CSTATE SMD T 1) \<and> nextHTDDataPending T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i957: "((CSTATE SIAC T 1 \<and> nextGOPendingIs GO T 1 \<and> nextGOPendingState Invalid T 1 \<and> \<not> CSTATE IIA T 0 \<and> GTS T 0) \<and> HSTATE ModifiedM T \<longrightarrow> CSTATE Modified T 0 \<or> CSTATE MIA T 0 \<or> (CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<and> nextGOPending T 0 \<or>(CSTATE IMA T 0 \<or> CSTATE SMA T 0) \<and> nextGOPending T 0 \<or> (CSTATE IMD T 0 \<or> CSTATE SMD T 0) \<and> nextHTDDataPending T 0)   "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i958: "((CSTATE SIAC T 0 \<and> nextGOPendingIs GO T 0 \<and> nextGOPendingState Invalid T 0 \<and> \<not> CSTATE IIA T 1 \<and> GTS T 1) \<and> HSTATE MD T \<longrightarrow> dthdatas1 T \<noteq> []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i959: "((CSTATE SIAC T 1 \<and> nextGOPendingIs GO T 1 \<and> nextGOPendingState Invalid T 1 \<and> \<not> CSTATE IIA T 0 \<and> GTS T 0) \<and> HSTATE MD T \<longrightarrow> dthdatas2 T \<noteq> [])  "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i960: "((CSTATE SIAC T 0 \<and> nextGOPendingIs GO T 0 \<and> nextGOPendingState Invalid T 0 \<and> \<not> CSTATE IIA T 1 \<and> GTS T 1) \<and> HSTATE MA T \<longrightarrow> ((CSTATE IMAD T 1 \<or> CSTATE SMAD T 1) \<and> nextHTDDataPending T 1 \<or> CSTATE IMA T 1 \<or> CSTATE SMA T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i961: "((CSTATE SIAC T 1 \<and> nextGOPendingIs GO T 1 \<and> nextGOPendingState Invalid T 1 \<and> \<not> CSTATE IIA T 0 \<and> GTS T 0) \<and> HSTATE MA T \<longrightarrow> ((CSTATE IMAD T 0 \<or> CSTATE SMAD T 0) \<and> nextHTDDataPending T 0 \<or> CSTATE IMA T 0 \<or> CSTATE SMA T 0)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i962: "(HSTATE SD T \<and> nextDTHDataFrom 0 T \<longrightarrow> snps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i963: "(HSTATE SD T \<and> nextDTHDataFrom 1 T \<longrightarrow> snps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i964: "(HSTATE SD T \<and> nextDTHDataFrom 0 T \<longrightarrow> reqresps1 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i965: "(HSTATE SD T \<and> nextDTHDataFrom 1 T \<longrightarrow> reqresps2 T = []) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i966: "(HSTATE ID T \<and> nextDTHDataFrom 0 T \<longrightarrow> (\<not> CSTATE SIA T 1 \<or> nextGOPendingIs GO_WritePullDrop T 1) ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i967: "(HSTATE ID T \<and> nextDTHDataFrom 1 T \<longrightarrow> (\<not> CSTATE SIA T 0 \<or> nextGOPendingIs GO_WritePullDrop T 0) ) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i968: "(CSTATE MIA T 0 \<and> nextGOPendingIs GO_WritePull T 0 \<and> HSTATE ID T \<longrightarrow> (\<not> CSTATE SIA T 1 \<or> nextGOPendingIs GO_WritePullDrop T 1)) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i969: "(CSTATE MIA T 1 \<and> nextGOPendingIs GO_WritePull T 1 \<and> HSTATE ID T \<longrightarrow> (\<not> CSTATE SIA T 0 \<or> nextGOPendingIs GO_WritePullDrop T 0))  "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i970: "(HSTATE SAD T \<and> nextDTHDataFrom 1 T \<longrightarrow> \<not> CSTATE MIA T 0 \<and> \<not> CSTATE MIA T 1) "
by (insert assms, unfold SWMR_state_machine_def, elim conjE, assumption)
have i201: " HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
using HostSADData_HSTATE
by blast
have i2080: "length (dthdatas1 T) \<le> 1"
using i110
by auto
have i208: "dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
using dthdatas1_empty_HostSADData i2080
by blast
have i224: "\<not>HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
using HOST_State.distinct(11) HSTATE_def i201
by presburger
have aux3_r136: "\<not>(CSTATE IMAD (  T ) 1 \<and>
  nextHTDDataPending (  T ) 1)"
using assms i164 nextHTDDataPending_def
by presburger
have aux_r53: "(CSTATE ISAD (  T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and>
  nextGOPending (  T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow>
  \<not> nextReqIs RdShared (  T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
using i52
by force
have aux_r81: "htddatas2 T = []"
using i1x i164 i2x
by blast
show ?thesis
unfolding SWMR_state_machine_def
proof (intro conjI)
show goal1: "SWMR ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_various_forms3 MESI_State.distinct(101) MESI_State.distinct(11) assms i160) done
show goal2: "C_msg_P_oppo ISD nextHTDDataPending (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_general_rule_5_0 i190 i2x i897 nextDTHDataFrom_def nextHTDDataPending_otherside_rule_4_0) done
show goal3: "H_msg_P_same SD nextDTHDataPending (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HOST_State.distinct(171) HOST_State.distinct(219) HSTATE_invariant3 i201 i208 nextDTHDataPending_def) done
show goal4: "H_msg_P_same SAD nextDTHDataPending (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HOST_State.distinct(143) HOST_State.distinct(205) HSTATE_invariant3 i201 i208 nextDTHDataPending_def) done
show goal5: "C_msg_P_oppo ISAD nextGOPending (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 CSTATE_inequality_invariant MESI_State.distinct(15) MESI_State.distinct(261) assms i143 i144 i160 i22 i23 i426 i701 i826 i827 i836 nextGOPending_HostSADData) done
show goal6: "H_msg_P_same SharedM (nextReqIs RdShared) (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 CSTATE_inequality_invariant C_msg_state_def MESI_State.distinct(11) assms i160 i47 nextReqIs_HostSADData_IMAD_invariant1) done
show goal7: "H_msg_P_oppo SharedM (nextReqIs RdShared) (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HOST_State.distinct(223) HOST_State.distinct(81) HSTATE_invariant3 i201) done
show goal8: "H_msg_P_same ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> CSTATE Modified T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) i224) done
show goal9: "H_msg_P_oppo ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> nextDTHDataPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) i224) done
show goal10: "H_msg_P_oppo ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> nextSnpRespIs RspIFwdM T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) i224) done
show goal11: "H_msg_P_same ModifiedM (nextReqIs RdShared) (\<lambda>T i. \<not> nextSnpRespIs RspIFwdM T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) i224) done
show goal12: "C_H_state IMAD (nextReqIs RdOwn) Modified SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(11) MESI_State.distinct(261) assms i160) done
show goal13: "C_H_state IMAD (nextReqIs RdOwn) Modified SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(11) MESI_State.distinct(261) assms i160) done
show goal14: "C_H_state IMAD (nextReqIs RdOwn) Modified SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(11) MESI_State.distinct(261) assms i160) done
show goal15: "C_H_state Invalid nextStore Modified SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 CSTATE_different1 CSTATE_different2 C_H_state_def MESI_State.distinct(5) assms i160 i19 nextStore_general_rule_9_0) done
show goal16: "C_H_state Invalid nextStore Modified SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 CSTATE_different1 CSTATE_different2 C_H_state_def MESI_State.distinct(5) assms i160 i19 nextStore_general_rule_9_0) done
show goal17: "C_H_state Invalid nextStore Modified SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 CSTATE_different1 CSTATE_different2 C_H_state_def MESI_State.distinct(5) assms i160 i19 nextStore_general_rule_9_0) done
show goal18: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HOST_State.distinct(81) HSTATE_invariant3 i201) done
show goal19: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(171) HOST_State.distinct(219) HSTATE_invariant3 i201) done
show goal20: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal21: "C_msg_not RdShared IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 CSTATE_inequality_invariant C_msg_not_def MESI_State.distinct(261) assms i160 i25 nextReqIs_HostSADData_IMAD_invariant1) done
show goal22: "C_msg_not RdShared Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 CSTATE_inequality_invariant C_msg_not_def MESI_State.distinct(143) assms i160 i26 nextReqIs_HostSADData_IMAD_invariant1) done
show goal23: "H_msg_P_same ModifiedM (nextReqIs DirtyEvict) (\<lambda>T i. CSTATE MIA T i \<or> CSTATE IIA T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) i224) done
show goal24: "C_msg_P_host MIA (nextGOPendingIs GO_WritePull) (\<lambda>T. \<not> HSTATE ModifiedM T) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) i224) done
show goal25: "C_msg_P_same MIA (nextGOPendingIs GO_WritePull) nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal26: "C_msg_P_host MIA (nextGOPendingIs GO_WritePull) (HSTATE ID) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal27: "C_state_not MIA RdShared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal28: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply simp
by (smt (verit) CSTATE_various_forms2 CSTATE_various_forms3 MESI_State.distinct(277) assms i160 i180 i186 i189 i2x i454 i590 i716 i732 i772 nextDTHDataFrom_def nextGOPendingIs_various_forms2 nextReqRespIs.simps(1))
show goal29: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_different1 CSTATE_general_rule_5_0 C_msg_state_def HOST_State.distinct(145) HOST_State.distinct(173) HSTATE_invariant3 MESI_State.distinct(277) i181 i186 i189 i1x i2x i47 i590 i704 nextDTHDataFrom_def nextGOPendingIs_general_rule_12_1 nextReqIs_general_rule_9_0) done
show goal30: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextDTHDataPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_general_rule_5_0 HOST_State.distinct(145) HOST_State.distinct(227) HSTATE_invariant3 i181 i186 i189 i1x i208 i2x i590 i704 nextDTHDataFrom_def nextDTHDataPending_def nextGOPendingIs_general_rule_12_1) done
show goal31: "H_C_state_msg_same ModifiedM Modified (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) i224) done
show goal32: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal33: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal34: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextDTHDataPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal35: "H_C_state_msg_oppo ModifiedM IIA (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) i224) done
show goal36: "C_msg_P_host Shared (nextSnoopIs SnpInv) (HSTATE MA) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) i148 i160 i1x i2x i454 i56 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0 snps1_empty_not_nextSnoopIs_rule_12_0) done
show goal37: "C_msg_state RdShared ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 C_msg_state_def assms i160 i47 nextReqIs_HostSADData_IMAD_invariant1) done
show goal38: "C_not_C_msg Modified ISAD nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 CSTATE_inequality_invariant MESI_State.distinct(261) assms i143 i144 i160 i22 i23 i426 i701 i826 i827 i836 nextGOPending_HostSADData) done
show goal39: "C_msg_P_same Invalid nextStore (\<lambda>T i. \<not> nextHTDDataPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(143) assms i160 i190 nextHTDDataPending_SADData) done
show goal40: "C_msg_P_same Invalid nextStore (\<lambda>T i. \<not> nextSnoopIs SnpInv T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i591 i592 nextSnoopIs_general_rule_11_0) done
show goal41: "C_msg_P_same ISAD nextGOPending (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 HOST_State.distinct(141) HOST_State.distinct(167) HOST_State.distinct(175) HOST_State.distinct(267) HSTATE_invariant3 MESI_State.distinct(261) aux_r53 i143 i160 i186 i1x i2x i426 nextDTHDataFrom_def nextGOPending_General_rule_11_0) done
show goal42: "snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms dthdatas2_HostSADData i55 i732 reqreps1_HostSADData reqs1_HostSADData snpresps2_HostSADData snps2_HostSADData) done
show goal43: "snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i166 i208 i56 reqresps2_HostSADData reqs2_HostSADData snpresps1_HostSADData snps1_HostSADData) done
show goal44: "length (reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) i57 reqs1_HostSADData) done
show goal45: "length (reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) assms i166 i58 list.size(3) reqs2_HostSADData) done
show goal46: "length (snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) i60 snps2_HostSADData) done
show goal47: "length (snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) i61 snps1_HostSADData) done
show goal48: "C_msg_P_same Shared (nextSnoopIs SnpInv) (\<lambda>T i. \<not> nextHTDDataPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) i148 i160 i190 i1x i2x i454 nextDTHDataFrom_def nextHTDDataPending_otherside_rule_4_0 nextSnoopIs_general_rule_11_0) done
show goal49: "C_msg_P_same IIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal50: "C_msg_P_oppo Invalid nextStore (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (cases "dthdatas1 T")
apply  (auto)
apply (smt (verit) CSTATE_various_forms2 i613old)
apply (smt (verit) CSTATE_various_forms3 MESI_State.distinct(143) i160 i164 i1x i2x)
apply (smt (verit) CSTATE_various_forms2 i613old i615old) apply (smt (verit) aux_r81 i56 list.distinct(1)) done
show goal51: "CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 assms i381 i613old i732 reqreps1_HostSADData snpresps2_HostSADData snps2_HostSADData) done
show goal52: "CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(143) i160 i1x i2x) done
show goal53: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 assms i615old i732 reqreps1_HostSADData snpresps2_HostSADData snps2_HostSADData) done
show goal54: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(101) i160 i1x i2x) done
show goal55: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 assms i617old i732 snpresps2_HostSADData snps2_HostSADData) done
show goal56: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(277) i160 i1x i2x) done
show goal57: "CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i68 reqs1_HostSADData) done
show goal58: "CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal59: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i70 reqs1_HostSADData) done
show goal60: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal61: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i72) done
show goal62: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i72) done
show goal63: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i224) done
show goal64: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i224) done
show goal65: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextLoad ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i751old nextLoad_HostSADData) done
show goal66: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextLoad ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextLoad assms i146 i160) done
show goal67: "C_msg_P_host ISD (nextSnoopIs SnpInv) (HSTATE MA) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) i148 i160 i1x i2x i454 i56 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0 snps1_empty_not_nextSnoopIs_rule_12_0) done
show goal68: "length (htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) HostSADData_one_msg_htddatas1 i77) done
show goal69: "length (htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) assms htddatas2_HostSADData i164) done
show goal70: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i732 i79 reqreps1_HostSADData snpresps2_HostSADData snps2_HostSADData) done
show goal71: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i208 i80 reqresps2_HostSADData snpresps1_HostSADData snps1_HostSADData) done
show goal72: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i81 reqs1_HostSADData) done
show goal73: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal74: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal75: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal76: "length (reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) i85 reqreps1_HostSADData) done
show goal77: "length (reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) i86 reqresps2_HostSADData) done
show goal78: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i794 i858) done
show goal79: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal80: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i794 i858) done
show goal81: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal82: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i91 nextReqIs_HostSADData_IMAD_invariant1) done
show goal83: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i92 nextReqIs_HostSADData_IMAD_invariant2) done
show goal84: "C_msg_P_same MIA (nextReqIs DirtyEvict) nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) assms i160 i537 i859 i92 nextEvict_HostSADData_invariant nextReqIs_HostSADData_IMAD_invariant1 nextReqIs_HostSADData_IMAD_invariant2) done
show goal85: "reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208 i94 reqreps1_HostSADData reqs1_HostSADData) done
show goal86: "reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal87: "reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal88: "reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal89: "reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_one_msg_htddatas1 i100 i208 reqs1_HostSADData) done
show goal90: "reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms aux_r81 i164 i166 reqs2_HostSADData) done
show goal91: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal92: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i224) done
show goal93: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal94: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal95: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(219) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal96: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(277) assms i160 i859) done
show goal97: "reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208 i94 reqreps1_HostSADData reqs1_HostSADData) done
show goal98: "reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal99: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal100: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal101: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208) done
show goal102: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(171) HSTATE_invariant4 i201) done
show goal103: "length (dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) assms i166 i208 i58 list.size(3)) done
show goal104: "length (dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) dthdatas2_HostSADData i884) done
show goal105: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal106: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal107: "HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> (nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextSnpRespIs RspSFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal108: "HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> (nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextSnpRespIs RspSFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_nextSnpRespIs_otherside assms i437) done
show goal109: "nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextSnpRespIs RspIHitSE ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_nextSnpRespIs_sameside assms i455 i948) done
show goal110: "nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextSnpRespIs RspIHitSE ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal111: "nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i452 i859 nextReqIs_HostSADData_IMAD_invariant1) done
show goal112: "nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i859 i92 nextReqIs_HostSADData_IMAD_invariant2) done
show goal113: "snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i118 i208 reqresps2_HostSADData snpresps1_HostSADData) done
show goal114: "snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal115: "length (snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) i120 snpresps1_HostSADData) done
show goal116: "length (snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) assms i121 i732 list.size(3) snpresps2_HostSADData) done
show goal117: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> (nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextSnpRespIs RspSFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal118: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> (nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextSnpRespIs RspSFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_nextSnpRespIs_otherside assms i437) done
show goal119: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(201) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal120: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(201) HSTATE_invariant4 i201) done
show goal121: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal122: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal123: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(143) HSTATE_invariant4 i201) done
show goal124: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal125: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HSTATE_invariant4 i201) done
show goal126: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> []"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal127: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i208) done
show goal128: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal129: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i208) done
show goal130: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal131: "dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<and> HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208) done
show goal132: "dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<and> HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(171) HSTATE_invariant4 i201) done
show goal133: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextLoad ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal134: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextLoad ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextLoad assms i146 i160) done
show goal135: "C_msg_P_same IIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_general_rule_5_0 HOST_State.distinct(145) HOST_State.distinct(167) HOST_State.distinct(227) HOST_State.distinct(287) HSTATE_invariant3 i180 i181 i186 i189 i1x i2x i590 i704 nextDTHDataFrom_def nextGOPendingIs_general_rule_12_0 nextGOPendingIs_general_rule_12_1) done
show goal136: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 HOST_State.distinct(141) HOST_State.distinct(167) HOST_State.distinct(197) HOST_State.distinct(379) HSTATE_invariant3 MESI_State.distinct(261) i143 i160 i186 i1x i2x i426 nextDTHDataFrom_def nextGOPending_General_rule_11_0) done
show goal137: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 HOST_State.distinct(141) HOST_State.distinct(167) HOST_State.distinct(197) HOST_State.distinct(379) HSTATE_invariant3 MESI_State.distinct(261) i144 i160 i186 i1x i2x i426 nextDTHDataFrom_def nextGOPending_General_rule_11_1) done
show goal138: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextLoad ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i145 nextLoad_HostSADData) done
show goal139: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextLoad ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextLoad assms i146 i160) done
show goal140: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i147 i2x i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal141: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i148 i160 i1x i2x i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal142: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i149 i732 nextGOPending_HostSADData snpresps2_HostSADData snps2_HostSADData) done
show goal143: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i150 i160 i208 nextGOPending_HostSADData snpresps1_HostSADData snps1_HostSADData) done
show goal144: "(CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal145: "(CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i224) done
show goal146: "(CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal147: "(CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal148: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i224) done
show goal149: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal150: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal151: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal152: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal153: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal154: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal155: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal156: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal157: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(81) HSTATE_invariant4 i201) done
show goal158: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208) done
show goal159: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(81) HSTATE_invariant4 i201) done
show goal160: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208) done
show goal161: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal162: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i224) done
show goal163: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal164: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HOST_State.distinct(81) HSTATE_invariant3 i201) done
show goal165: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i807 i858) done
show goal166: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal167: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 HOST_State.distinct(145) HOST_State.distinct(167) HOST_State.distinct(229) HOST_State.distinct(305) HSTATE_invariant3 i180 i186 i189 i1x i2x i590 nextDTHDataFrom_def nextGOPendingIs_general_rule_12_0) done
show goal168: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(277) i160 i1x i2x) done
show goal169: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal170: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(261) assms i160) done
show goal171: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HOST_State.distinct(81) HSTATE_invariant3 i201) done
show goal172: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HOST_State.distinct(81) HSTATE_invariant3 i201) done
show goal173: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms dthdatas2_HostSADData i192 i208 nextDTHDataFrom_def) done
show goal174: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i859) done
show goal175: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i859) done
show goal176: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i224) done
show goal177: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms dthdatas2_HostSADData i192 i208 nextDTHDataFrom_def) done
show goal178: "nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal179: "nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal180: "nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal181: "nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal182: "HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms dthdatas2_HostSADData i192 i208 nextDTHDataFrom_def) done
show goal183: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i199) done
show goal184: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (\<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> (\<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (metis CSTATE_general_rule_5_0 CSTATE_inequality_invariant assms i160 i196 i199 i2x i437 nextSnpRespIs_general_rule_11_0) done
show goal185: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal186: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal187: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i199) done
show goal188: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i199) done
show goal189: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal190: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal191: "snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208 i343 reqreps1_HostSADData snpresps1_HostSADData) done
show goal192: "snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal193: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i795 i858) done
show goal194: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i795 i858) done
show goal195: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal196: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal197: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> (nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextSnpRespIs RspSFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal198: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> (nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextSnpRespIs RspSFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal199: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal200: "C_msg_P_same SIA (nextGOPendingIs GO_WritePull) nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal201: "C_msg_P_same SIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal202: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 assms i316 i732 snpresps2_HostSADData snps2_HostSADData) done
show goal203: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(289) assms i160 i164) done
show goal204: "C_msg_P_same SIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal205: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i807 i858) done
show goal206: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal207: "C_msg_P_same SIA (nextGOPendingIs GO_WritePull) (\<lambda>T i. \<not> nextDTHDataPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal208: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal209: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal210: "C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
by (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 C_msg_P_same_def HostSADData_nextEvict_otherside HostSADData_nextGOPendingIs_general HostSADData_nextGOPendingIs_otherside i324 nextEvict_HostSADData_invariant)
show goal211: "C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextReqIs RdShared T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)
using CSTATE_different1 CSTATE_different2 C_msg_state_def goal37 by blast

show goal212: "C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def)
by (metis CSTATE_HostSide_rule_6_0 CSTATE_HostSide_rule_6_1 CSTATE_different2 HOST_State.distinct(145) HSTATE_invariant3 MESI_State.distinct(289) i160 i186 i189 i327 i590 i713 i714 nextDTHDataFrom_def nextGOPendingIs_general_rule_12_0 nextSnoopPending_empty_not_rule_11_0)

show goal213:  "CSTATE SIA (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePullDrop (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE InvalidM (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE IB (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms)
by (meson CSTATE_general_rule_5_0 HOST_State.distinct(145) HOST_State.distinct(167) HOST_State.distinct(169) HSTATE_invariant3 i186 i189 i327 i590 nextDTHDataFrom_def nextGOPendingIs_general_rule_12_0)

show goal214:  "CSTATE SIA (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePullDrop (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE InvalidM (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE IB (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID (  T [ Dev2 +=h2dd hmsg] [    =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(289) i160 i1x i2x) done
show goal215: "C_msg_P_same SIA (nextGOPendingIs GO_WritePullDrop) (\<lambda>T i. \<not> nextDTHDataPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(289) i160 i1x i208 i2x nextDTHDataPending_def) done
show goal216: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal217: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i201) done
show goal218: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i201) done
show goal219: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal220: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal221: "C_not_C_msg Modified IMAD nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(11) MESI_State.distinct(261) assms i160) done
show goal222: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i408 nextDTHDataFrom_def nextGOPending_General_rule_11_0) done
show goal223: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextStore ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i339 nextStore_general_rule_9_0) done
show goal224: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextStore ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i340 nextStore_general_rule_9_0) done
show goal225: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i341 i732 nextGOPending_HostSADData snpresps2_HostSADData snps2_HostSADData) done
show goal226: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i150 i160 i208 i342 nextGOPending_HostSADData snpresps1_HostSADData snps1_HostSADData) done
show goal227: "snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208 i343 reqreps1_HostSADData snpresps1_HostSADData) done
show goal228: "snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal229: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(281) assms i160) done
show goal230: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(261) assms i160) done
show goal231: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i190 i347 i514 nextGOPending_HostSADData) done
show goal232: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(281) assms i160) done
show goal233: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextStore ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i349 nextStore_general_rule_9_0) done
show goal234: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextStore ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i350 nextStore_general_rule_9_0) done
show goal235: "C_msg_P_same IMA nextGOPending nextStore ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i370 i371 nextStore_general_rule_9_0) done
show goal236: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal237: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (metis CSTATE_different2 CSTATE_general_rule_5_0 HOST_State.distinct(165) HOST_State.distinct(265) HSTATE_invariant3 MESI_State.distinct(221) MESI_State.distinct(283) i160 i189 i1x i2x i407 nextDTHDataFrom_def) done
show goal238: "C_msg_P_oppo IMA nextGOPending (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(263) i160 i1x i2x i406 nextDTHDataFrom_def) done
show goal239: "C_msg_P_oppo SMA nextGOPending (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(283) i160 i1x i2x i406 nextDTHDataFrom_def) done
show goal240: "C_msg_P_oppo ISA nextGOPending (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 CSTATE_inequality_invariant HOST_State.distinct(143) HOST_State.distinct(147) HOST_State.distinct(149) HOST_State.distinct(167) HOST_State.distinct(77) HSTATE_invariant4 MESI_State.distinct(221) assms i160 i374 i375 i831 nextGOPending_HostSADData) done
show goal241: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i406 nextDTHDataFrom_def) done
show goal242: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(263) assms i160) done
show goal243: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> ((CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (metis CSTATE_HostSide_rule_6_0 i190 i2x i408 i514 nextDTHDataFrom_def nextGOPending_General_rule_11_0) done
show goal244: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> ((CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (metis CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 CSTATE_HostSide_rule_6_0 CSTATE_general_rule_5_0 CSTATE_otherside_rule_20 assms i148 i160 i190 i1x i464 i465 i600 i648 i910 nextGOPending_General_rule_11_1 nextGOPending_HostSADData nextHTDDataPending_SADData nextSnoopIs_general_rule_11_0) done
show goal245: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> (dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]))"
apply  (insert assms) apply (metis CSTATE_general_rule_5_0 HTDDataPending_htddatas_invariant1 HostSADData_one_msg_htddatas1 dthdatas2_HostSADData dthdatas2_minus1_otherside htddatas1_general_rule_1_0 htddatas1_general_rule_2_0 i189 i190 i208 i2x i406 i792) done
show goal246: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> (dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]))"
apply  (insert assms) apply (metis dthdatas2_HostSADData dthdatas2_minus1_otherside i192 i208 i2x nextDTHDataFrom_def numeral_One zero_neq_numeral) done
show goal247: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208) done
show goal248: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (metis CSTATE_general_rule_5_0 dthdatas2_HostSADData i409 nextGOPending_HostSADData) done
show goal249: "C_msg_P_same SMA nextGOPending nextStore ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i370 i371 nextStore_general_rule_9_0) done
show goal250: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (metis CSTATE_general_rule_5_0 OFFSET_def i190 i2x i406 nextDTHDataFrom_def nextHTDDataPending_otherside_rule_4_0) done
show goal251: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(265) MESI_State.distinct(283) MESI_State.distinct(285) i160 i1x i2x) done
show goal252: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextLoad ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i145 i368 i751old nextLoad_HostSADData) done
show goal253: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextLoad ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextLoad assms i146 i160) done
show goal254: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextStore ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i339 i349 i370 nextStore_general_rule_9_0) done
show goal255: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextStore ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i340 i350 i371 nextStore_general_rule_9_0) done
show goal256: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> (dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> nextSnpRespIs RspSFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]))"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i190 i208 i461 nextGOPending_HostSADData nextHTDDataPending_SADData) done
show goal257: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> (dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> nextSnpRespIs RspSFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]))"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms dthdatas2_HostSADData i192 i897 nextDTHDataFrom_def) done
show goal258: "CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 HOST_State.distinct(167) HOST_State.distinct(379) HSTATE_invariant3 MESI_State.distinct(261) i160 i186 i1x i2x i374 i426 i454 nextDTHDataFrom_def nextGOPending_General_rule_11_0) done
show goal259: "CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(221) i160 i1x i2x) done
show goal260: "CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal261: "CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(259) i160 i1x i2x) done
show goal262: "CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i377 i732 reqreps1_HostSADData snpresps2_HostSADData snps1_HostSADData snps2_HostSADData) done
show goal263: "CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i208 i378 reqresps2_HostSADData snpresps1_HostSADData snps1_HostSADData snps2_HostSADData) done
show goal264: "CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> \<not> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i224) done
show goal265: "CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> \<not> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i224) done
show goal266: "CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i208 i381 reqreps1_HostSADData) done
show goal267: "CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i208 i382 reqresps2_HostSADData) done
show goal268: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i384 i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal269: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i148 i160 i1x i2x i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal270: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i466 i507 nextSnoopIs_general_rule_11_0) done
show goal271: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i190 i385 i467 i600 nextSnoopIs_general_rule_11_0) done
show goal272: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i388 i732 nextSnoopIs_general_rule_11_0 snpresps2_HostSADData snps2_HostSADData) done
show goal273: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i208 i389 nextSnoopIs_general_rule_11_0 snpresps1_HostSADData snps1_HostSADData) done
show goal274: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 assms i390 i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0 reqreps1_HostSADData) done
show goal275: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) assms i148 i160 i164 i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal276: "nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i392 nextReqIs_HostSADData_IMAD_invariant1) done
show goal277: "nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i494 nextReqIs_HostSADData_IMAD_invariant2) done
show goal278: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> CXL_SPG_used ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 CXL_SPG_used_general_rule_7_0 i396 nextReqIs_HostSADData_IMAD_invariant1 nextSnoopIs_general_rule_11_0) done
show goal279: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> CXL_SPG_used ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CXL_SPG_used_general_rule_7_0 assms i160 i397 i494 nextSnoopIs_general_rule_11_0) done
show goal280: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i400 i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal281: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i148 i160 i1x i2x i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal282: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i468 i507 nextSnoopIs_general_rule_11_0) done
show goal283: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i190 i401 i469 i600 nextSnoopIs_general_rule_11_0) done
show goal284: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HSTATE_invariant4 i201) done
show goal285: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal286: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal287: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal288: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal289: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal290: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal291: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal292: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal293: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal294: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal295: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal296: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal297: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal298: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal299: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal300: "(HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 assms i442 i798 snpresps1_HostSADData) done
show goal301: "(HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms aux_r81 i164 i732 snpresps2_HostSADData) done
show goal302: "nextSnpRespIs RspSFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_nextSnpRespIs_sameside i440) done
show goal303: "nextSnpRespIs RspSFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 HostSADData_nextSnpRespIs_otherside i441) done
show goal304: "(CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal305: "(CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal306: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i432 i474 nextSnoopIs_general_rule_11_0) done
show goal307: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(11) assms i160) done
show goal308: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i476 nextSnoopIs_general_rule_11_0) done
show goal309: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i477 nextSnoopIs_general_rule_11_0) done
show goal310: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i408 nextDTHDataFrom_def) done
show goal311: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(261) assms i160 i426 i692 nextSnoopIs_general_rule_11_0) done
show goal312: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i426 i691 i836 nextSnoopIs_general_rule_11_0) done
show goal313: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (metis CSTATE_general_rule_5_0 CSTATE_inequality_invariant MESI_State.distinct(265) assms i160 i2x numeral_One numeral_eq_iff) done
show goal314: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(261) i160 i1x i2x i619 nextSnoopIs_general_rule_11_0) done
show goal315: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(261) assms i160 i859) done
show goal316: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i426 i693 i836 nextSnoopIs_general_rule_11_0) done
show goal317: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i148 i160 i1x i2x i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal318: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i406 nextDTHDataFrom_def) done
show goal319: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(263) assms i160) done
show goal320: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i426 i695 i836 nextSnoopIs_general_rule_11_0) done
show goal321: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i148 i160 i1x i2x i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal322: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal323: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i859) done
show goal324: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal325: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160 i859) done
show goal326: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i897 nextDTHDataFrom_def) done
show goal327: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant assms i160 i483 i485 i72 nextSnoopIs_general_rule_11_0) done
show goal328: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal329: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i485 nextSnoopIs_general_rule_11_0) done
show goal330: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i486 reqs1_HostSADData) done
show goal331: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal332: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 assms i488 i732 reqreps1_HostSADData snpresps2_HostSADData snps2_HostSADData) done
show goal333: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(11) i160 i1x i2x) done
show goal334: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HSTATE_invariant4 i201) done
show goal335: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208) done
show goal336: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(205) HSTATE_invariant3 i201) done
show goal337: "nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i493 nextReqIs_HostSADData_IMAD_invariant1) done
show goal338: "nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i494 nextReqIs_HostSADData_IMAD_invariant2) done
show goal339: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(221) HSTATE_invariant3 i201) done
show goal340: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i494 nextReqIs_HostSADData_IMAD_invariant2) done
show goal341: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HSTATE_invariant4 i201) done
show goal342: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208) done
show goal343: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i316 i732 snpresps2_HostSADData snps2_HostSADData) done
show goal344: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i208 i317 i582 snpresps1_HostSADData snps1_HostSADData) done
show goal345: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i454 i501 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal346: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i148 i160 i1x i2x i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal347: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> CXL_SPG_used ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 CXL_SPG_used_general_rule_7_0 i503 nextReqIs_HostSADData_IMAD_invariant1 nextSnoopIs_general_rule_11_0) done
show goal348: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> CXL_SPG_used ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CXL_SPG_used_general_rule_7_0 i504 nextReqIs_HostSADData_IMAD_invariant2 nextSnoopIs_general_rule_11_0) done
show goal349: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i505 i507 nextSnoopIs_general_rule_11_0) done
show goal350: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i506 nextSnoopIs_general_rule_11_0) done
show goal351: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i507 nextSnoopIs_general_rule_11_0) done
show goal352: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i148 i160 i190 i600 nextSnoopIs_general_rule_11_0) done
show goal353: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(199) HOST_State.distinct(205) HSTATE_invariant3 i201) done
show goal354: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (\<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal355: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (\<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal356: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(199) HOST_State.distinct(221) HSTATE_invariant3 i201) done
show goal357: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i494 nextReqIs_HostSADData_IMAD_invariant2) done
show goal358: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i190 i514 nextGOPending_HostSADData) done
show goal359: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) nextHTDDataPending_true_rule_2_0) done
show goal360: "C_msg_P_oppo SMAD nextGOPending (\<lambda>T i. \<not> nextSnoopPending T i) ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms , unfold SWMR_def C_msg_P_same_def C_msg_P_oppo_def H_msg_P_same_def C_H_state_def C_msg_not_def H_msg_P_oppo_def C_msg_P_host_def C_state_not_def H_C_state_msg_same_def H_C_state_msg_oppo_def C_msg_state_def C_not_C_msg_def) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 CSTATE_inequality_invariant MESI_State.distinct(281) assms i160 i190 i514 i913 i914 nextGOPending_HostSADData) done
show goal361: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i946 nextReqIs_HostSADData_IMAD_invariant1) done
show goal362: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i947 nextReqIs_HostSADData_IMAD_invariant2) done
show goal363: "nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> nextReqRespStateIs Invalid (reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]))"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i794 i858) done
show goal364: "nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> nextReqRespStateIs Invalid (reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]))"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal365: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i560 nextEvict_HostSADData_invariant nextReqIs_HostSADData_IMAD_invariant1) done
show goal366: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextEvict_otherside i561 nextReqIs_HostSADData_IMAD_invariant2) done
show goal367: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i560 nextEvict_HostSADData_invariant nextReqIs_HostSADData_IMAD_invariant1) done
show goal368: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextEvict_otherside i561 nextReqIs_HostSADData_IMAD_invariant2) done
show goal369: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i562 nextReqIs_HostSADData_IMAD_invariant1) done
show goal370: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i561 i563 nextReqIs_HostSADData_IMAD_invariant2) done
show goal371: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i562 nextReqIs_HostSADData_IMAD_invariant1) done
show goal372: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i561 i563 nextReqIs_HostSADData_IMAD_invariant2) done
show goal373: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal374: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i659 i859) done
show goal375: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal376: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i659 i859) done
show goal377: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i384 i454 i466 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal378: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (metis CSTATE_general_rule_5_0 HTDDataPending_htddatas_invariant1 HostSADData_one_msg_htddatas1 assms htddatas1_general_rule_1_0 htddatas1_general_rule_2_0 i148 i160 i190 i2x i600 nextSnoopIs_general_rule_11_0) done
show goal379: "nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i537 nextEvict_HostSADData_invariant nextReqIs_HostSADData_IMAD_invariant1) done
show goal380: "nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i92 nextReqIs_HostSADData_IMAD_invariant2) done
show goal381: "nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal382: "nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) assms i160 i92 nextReqIs_HostSADData_IMAD_invariant2) done
show goal383: "nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal384: "nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) assms i160 i92 nextReqIs_HostSADData_IMAD_invariant2) done
show goal385: "nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> nextReqRespStateIs Invalid (reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]))"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(171) HSTATE_invariant3 i201) done
show goal386: "nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> nextReqRespStateIs Invalid (reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]))"
apply  (insert assms) apply (smt (verit) assms i160 i166 i92 nextReqIs_HostSADData_IMAD_invariant2) done
show goal387: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal388: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(285) assms i160) done
show goal389: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal390: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (metis DeviceID.distinct(1) DeviceID.exhaust HOST_State.distinct(147) HOST_State.distinct(149) HSTATE_invariant3 assms i148 i160 i1x nextSnoopIs_general_rule_11_0) done
show goal391: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal392: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(285) i160 i1x i2x) done
show goal393: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal394: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(285) assms i160) done
show goal395: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal396: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(285) i160 i1x i2x) done
show goal397: "nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i555 i946 nextReqIs_HostSADData_IMAD_invariant1) done
show goal398: "nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i556 i947 nextReqIs_HostSADData_IMAD_invariant2) done
show goal399: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal400: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal401: "CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(101) assms i160) done
show goal402: "nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i560 nextEvict_HostSADData_invariant nextReqIs_HostSADData_IMAD_invariant1) done
show goal403: "nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> nextEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextEvict_otherside i561 nextReqIs_HostSADData_IMAD_invariant2) done
show goal404: "nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i562 nextReqIs_HostSADData_IMAD_invariant1) done
show goal405: "nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i563 nextReqIs_HostSADData_IMAD_invariant2) done
show goal406: "nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal407: "nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextReqIs CleanEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i859) done
show goal408: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 C_msg_state_def i47 nextReqIs_HostSADData_IMAD_invariant1) done
show goal409: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal410: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal411: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> ((CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)) \<and> \<not> ((CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1))"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal412: "nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal413: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal414: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i859) done
show goal415: "nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal416: "nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal417: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i190 i2x i406 nextDTHDataFrom_def nextHTDDataPending_otherside_rule_4_0) done
show goal418: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (metis CSTATE_HostSide_rule_6_flipped_1 CSTATE_general_rule_2_0 CSTATE_general_rule_2_flipped_1 CSTATE_general_rule_5_0 CSTATE_inequality_invariant MESI_State.distinct(261) MESI_State.distinct(263) MESI_State.distinct(281) MESI_State.distinct(283) assms i160 i2x) done
show goal419: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i732 i780 i859) done
show goal420: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i164 i859) done
show goal421: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal422: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i859) done
show goal423: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal424: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i859) done
show goal425: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i313 i858) done
show goal426: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(277) i160 i1x i2x) done
show goal427: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(289) i160 i1x i2x) done
show goal428: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms dthdatas2_HostSADData i192 i208 nextDTHDataFrom_def) done
show goal429: "CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i591 nextSnoopIs_general_rule_11_0) done
show goal430: "CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i592 nextSnoopIs_general_rule_11_0) done
show goal431: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i859) done
show goal432: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal433: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal434: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (metis CSTATE_general_rule_5_0 HSTATE_equals_sHost HTDDataPending_htddatas_invariant1 HostSADData_one_msg_htddatas1 assms hstate_invariants(16) htddatas1_general_rule_1_0 htddatas1_general_rule_2_0 i148 i160 i190 i2x i600 nextSnoopIs_general_rule_11_0) done
show goal435: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i190 i514 i597 nextGOPending_HostSADData) done
show goal436: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i150 i160 i208 i598 nextGOPending_HostSADData snpresps1_HostSADData snps1_HostSADData) done
show goal437: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal438: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i148 i160 i190 i600 nextSnoopIs_general_rule_11_0) done
show goal439: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(199) HOST_State.distinct(219) HSTATE_invariant3 i201) done
show goal440: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(183) MESI_State.distinct(221) assms i160) done
show goal441: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(199) HOST_State.distinct(205) HSTATE_invariant3 i201) done
show goal442: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(283) MESI_State.distinct(285) assms i160) done
show goal443: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(199) HOST_State.distinct(221) HSTATE_invariant3 i201) done
show goal444: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(263) MESI_State.distinct(265) assms i160) done
show goal445: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0))"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(199) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal446: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0))"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(199) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal447: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0))"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i190 i514 nextGOPending_HostSADData nextHTDDataPending_SADData) done
show goal448: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1))"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(199) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal449: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1))"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(261) assms i160) done
show goal450: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<or> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1))"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(281) assms i160) done
show goal451: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i400 i454 i468 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal452: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (metis CSTATE_general_rule_5_0 HTDDataPending_htddatas_invariant1 HostSADData_one_msg_htddatas1 assms htddatas1_general_rule_1_0 htddatas1_general_rule_2_0 i148 i160 i190 i2x i600 nextSnoopIs_general_rule_11_0) done
show goal453: "CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i454 i615 i645 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal454: "CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (metis CSTATE_general_rule_5_0 HTDDataPending_htddatas_invariant1 HostSADData_one_msg_htddatas1 assms htddatas1_general_rule_1_0 htddatas1_general_rule_2_0 i148 i160 i190 i2x i600 nextSnoopIs_general_rule_11_0) done
show goal455: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i147 i454 i617 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal456: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (metis CSTATE_general_rule_5_0 HTDDataPending_htddatas_invariant1 HostSADData_one_msg_htddatas1 assms htddatas1_general_rule_1_0 htddatas1_general_rule_2_0 i148 i160 i190 i2x i600 nextSnoopIs_general_rule_11_0) done
show goal457: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 CSTATE_inequality_invariant assms i147 i160 i164 i454 i617 i619 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal458: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 i208 i620 nextSnoopIs_general_rule_11_0) done
show goal459: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i408 i464 nextDTHDataFrom_def) done
show goal460: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 i208 i620 i622 nextSnoopIs_general_rule_11_0) done
show goal461: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i406 i579 nextDTHDataFrom_def) done
show goal462: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 i208 i620 i624 nextSnoopIs_general_rule_11_0) done
show goal463: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i190 i514 i913 nextGOPending_HostSADData) done
show goal464: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (metis CSTATE_general_rule_5_0 aux_r81 i515 nextGOPending_HostSADData nextHTDDataPending_various_forms2) done
show goal465: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i408 i464 nextDTHDataFrom_def) done
show goal466: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 i208 i620 i628 nextSnoopIs_general_rule_11_0) done
show goal467: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i406 i579 nextDTHDataFrom_def) done
show goal468: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 i208 i620 i630 nextSnoopIs_general_rule_11_0) done
show goal469: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(219) HSTATE_invariant3 i201) done
show goal470: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal471: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> (nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<longrightarrow> \<not> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal472: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> (nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<longrightarrow> \<not> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal473: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal474: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal475: "CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal476: "CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal477: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal478: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (metis CSTATE_disj1 CSTATE_general_rule_5_0 DeviceID.distinct(1) DeviceID.exhaust MESI_State.distinct(265) assms i160 i1x) done
show goal479: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal480: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(265) i160 i1x i2x) done
show goal481: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal482: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i384 i454 i465 nextDTHDataFrom_def) done
show goal483: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i400 i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal484: "CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i148 i160 i1x i2x i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal485: "CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i454 i645 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal486: "CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i148 i160 i1x i2x i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal487: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i147 i2x i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal488: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i148 i160 i1x i2x i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal489: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal490: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) i148 i160 i1x i2x i454 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal491: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HOST_State.distinct(81) HSTATE_invariant3 i201) done
show goal492: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HOST_State.distinct(81) HSTATE_invariant3 i201) done
show goal493: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(199) HOST_State.distinct(81) HSTATE_invariant3 i201) done
show goal494: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HOST_State.distinct(81) HSTATE_invariant3 i201) done
show goal495: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0))"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HOST_State.distinct(81) HSTATE_invariant3 i201) done
show goal496: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1))"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HOST_State.distinct(81) HSTATE_invariant3 i201) done
show goal497: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0))"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i190 i514 nextGOPending_HostSADData nextHTDDataPending_SADData) done
show goal498: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1))"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(281) assms i160) done
show goal499: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i659 i859) done
show goal500: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i660 i859) done
show goal501: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(205) HSTATE_invariant3 i201) done
show goal502: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(183) MESI_State.distinct(265) MESI_State.distinct(285) assms i160) done
show goal503: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal504: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal505: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal506: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(261) assms i160) done
show goal507: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i190 i514 i667 nextGOPending_HostSADData) done
show goal508: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(281) assms i160) done
show goal509: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal510: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(221) MESI_State.distinct(263) MESI_State.distinct(283) assms i160) done
show goal511: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal512: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(205) HSTATE_invariant3 i201) done
show goal513: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(205) HSTATE_invariant3 i201) done
show goal514: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(205) HSTATE_invariant3 i201) done
show goal515: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(219) HSTATE_invariant3 i201) done
show goal516: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(219) HSTATE_invariant3 i201) done
show goal517: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal518: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(265) assms i160) done
show goal519: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal520: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i150 i160 i208 i342 nextGOPending_HostSADData snpresps1_HostSADData snps1_HostSADData) done
show goal521: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal522: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i681 nextSnoopIs_general_rule_11_0) done
show goal523: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal524: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i683 nextSnoopIs_general_rule_11_0) done
show goal525: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160) done
show goal526: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i685 nextSnoopIs_general_rule_11_0) done
show goal527: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i408 nextDTHDataFrom_def) done
show goal528: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(265) i160 i1x i2x) done
show goal529: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i406 nextDTHDataFrom_def) done
show goal530: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(263) i160 i1x i2x) done
show goal531: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (cases "dthdatas1 T")
apply  (auto)
apply (smt (verit) i2x nextDTHDataFrom_def) apply (smt (verit) aux_r81 i56 list.distinct(1) startsSnp.simps(1)) done
show goal532: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(261) i160 i1x i2x) done
show goal533: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal534: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(221) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal535: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i494 nextReqIs_HostSADData_IMAD_invariant2) done
show goal536: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(221) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal537: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> length (dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1 \<and> length (dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(221) HSTATE_invariant4 i201) done
show goal538: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> length (dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1 \<and> length (dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HSTATE_invariant4 i201) done
show goal539: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal540: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal541: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> length (dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1 \<and> length (dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(219) HSTATE_invariant4 i201) done
show goal542: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(221) HSTATE_invariant4 i201) done
show goal543: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208) done
show goal544: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HSTATE_invariant4 i201) done
show goal545: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208) done
show goal546: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(219) HSTATE_invariant4 i201) done
show goal547: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208) done
show goal548: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(221) HSTATE_invariant4 i201) done
show goal549: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HSTATE_invariant4 i201) done
show goal550: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(219) HSTATE_invariant4 i201) done
show goal551: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal552: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal553: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal554: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal555: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal556: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal557: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(199) HOST_State.distinct(221) HSTATE_invariant3 i201) done
show goal558: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(221) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal559: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal560: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(199) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal561: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> lastSharer ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_different1 CSTATE_disj2 CSTATE_inequality_invariant MESI_State.distinct(101) MESI_State.distinct(143) MESI_State.distinct(273) MESI_State.distinct(95) assms i160 lastSharer_def) done
show goal562: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> lastSharer ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_different2 CSTATE_disj2 MESI_State.distinct(101) MESI_State.distinct(117) MESI_State.distinct(143) MESI_State.distinct(95) assms i160 lastSharer_def) done
show goal563: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> lastSharer ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(223) HOST_State.distinct(81) HSTATE_invariant3 i201) done
show goal564: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> lastSharer ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_disj2 CSTATE_inequality_invariant MESI_State.distinct(143) assms i160 i561 i563 i947 lastSharer_def nextReqIs_HostSADData_IMAD_invariant2) done
show goal565: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal566: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal567: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal568: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal569: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal570: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal571: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (\<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> (\<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) i224) done
show goal572: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal573: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal574: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal575: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal576: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i859) done
show goal577: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal578: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i859) done
show goal579: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i224) done
show goal580: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal581: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal582: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal583: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal584: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal585: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal586: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i224) done
show goal587: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal588: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i224) done
show goal589: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1))"
apply  (insert assms) apply (smt (verit) i224) done
show goal590: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> (nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0))"
apply  (insert assms) apply (smt (verit) i224) done
show goal591: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal592: "CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i224) done
show goal593: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i208 i758 reqresps2_HostSADData) done
show goal594: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i208 i759 reqreps1_HostSADData) done
show goal595: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal596: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal597: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(219) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal598: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(199) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal599: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(199) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal600: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(199) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal601: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(199) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal602: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(199) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal603: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i768 i859) done
show goal604: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal605: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal606: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal607: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal608: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal609: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal610: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal611: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal612: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdShared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i224) done
show goal613: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i778 i859) done
show goal614: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal615: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal616: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i781 i859) done
show goal617: "snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<and> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal618: "snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<and> HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal619: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal620: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(265) assms i160 i732) done
show goal621: "nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal622: "nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal623: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspSFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 HostSADData_nextSnpRespIs_sameside assms i788) done
show goal624: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspSFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_nextSnpRespIs_otherside assms i789) done
show goal625: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i790 i828 nextGOPending_HostSADData) done
show goal626: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i791 i828 nextGOPending_HostSADData) done
show goal627: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(219) HSTATE_invariant4 i201) done
show goal628: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208) done
show goal629: "HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal630: "HSTATE SharedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i795 i858) done
show goal631: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 assms i160 nextHTDDataPending_true_rule_2_0) done
show goal632: "CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(277) assms i160) done
show goal633: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 assms i442 i798 snpresps1_HostSADData) done
show goal634: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms aux_r81 i164 i732 snpresps2_HostSADData) done
show goal635: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(219) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal636: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal637: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal638: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(219) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal639: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(219) HSTATE_invariant4 i201) done
show goal640: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal641: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal642: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(219) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal643: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i494 nextReqIs_HostSADData_IMAD_invariant2) done
show goal644: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal645: "HSTATE MB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(219) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal646: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal647: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal648: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i92 nextReqIs_HostSADData_IMAD_invariant2) done
show goal649: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal650: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal651: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal652: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i859 i945) done
show goal653: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal654: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal655: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal656: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i822 nextReqIs_HostSADData_IMAD_invariant1) done
show goal657: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs RdOwn ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i494 nextReqIs_HostSADData_IMAD_invariant2) done
show goal658: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i824 i828 nextGOPending_HostSADData) done
show goal659: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i825 i828 nextGOPending_HostSADData) done
show goal660: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i160 i826 i828 nextGOPending_HostSADData) done
show goal661: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i827 i828 nextGOPending_HostSADData) done
show goal662: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i160 i826 i828 nextGOPending_HostSADData) done
show goal663: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i160 i826 i828 nextGOPending_HostSADData) done
show goal664: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i160 i826 i828 nextGOPending_HostSADData) done
show goal665: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i828 i831 nextGOPending_HostSADData) done
show goal666: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i190 i827 i828 i832 nextGOPending_HostSADData nextHTDDataPending_SADData) done
show goal667: "CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSide_rule_6_0 i2x i406 nextDTHDataFrom_def) done
show goal668: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal669: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal670: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal671: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal672: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal673: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal674: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> (htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i897 nextDTHDataFrom_def) done
show goal675: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> (htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 i208 i841 i921) done
show goal676: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i842) done
show goal677: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i843) done
show goal678: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i844 snpresps1_HostSADData) done
show goal679: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal680: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> (CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i160 i846 nextGOPending_HostSADData) done
show goal681: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> (CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i847 nextGOPending_HostSADData) done
show goal682: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i848 nextGOPending_HostSADData) done
show goal683: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE ISA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i849 nextGOPending_HostSADData) done
show goal684: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i406 nextDTHDataFrom_def) done
show goal685: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 HostSADData_one_msg_htddatas1 i208 i851 nextGOPending_HostSADData) done
show goal686: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i852 nextGOPending_HostSADData) done
show goal687: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i853 nextGOPending_HostSADData) done
show goal688: "CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i854 snps1_HostSADData) done
show goal689: "CSTATE Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i208 i855 snps2_HostSADData) done
show goal690: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal691: "HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE ISD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal692: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal693: "HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i859) done
show goal694: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal695: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> CSTATE ISAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(281) assms i160) done
show goal696: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal697: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i515 i863 i914 nextGOPending_HostSADData nextReqIs_HostSADData_IMAD_invariant1) done
show goal698: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal699: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i150 i160 i208 i598 nextGOPending_HostSADData snpresps1_HostSADData snps1_HostSADData) done
show goal700: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal701: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal702: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal703: "CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal704: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(219) HSTATE_invariant3 i201) done
show goal705: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i92 nextReqIs_HostSADData_IMAD_invariant2) done
show goal706: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (\<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> (\<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(205) HSTATE_invariant3 i201) done
show goal707: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal708: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal709: "length (dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) assms i166 i208 i58 list.size(3)) done
show goal710: "length (dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) \<le> 1"
apply  (insert assms) apply (smt (verit) dthdatas2_HostSADData i884) done
show goal711: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal712: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextGOPendingIs_general assms i858) done
show goal713: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal714: "HSTATE MAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal715: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal716: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [] \<longrightarrow> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE Shared ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i732 snpresps2_HostSADData) done
show goal717: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal718: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(261) assms i160 i732) done
show goal719: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> (htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i406 nextDTHDataFrom_def) done
show goal720: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> (htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (metis CSTATE_general_rule_5_0 CSTATE_inequality_invariant DeviceID.distinct(1) DeviceID.exhaust MESI_State.distinct(263) assms i160 i2x) done
show goal721: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> (htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i406 nextDTHDataFrom_def) done
show goal722: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> (htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<or> CSTATE ISDI ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 i208 i851 i853 i894 i896 nextGOPending_HostSADData) done
show goal723: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i208) done
show goal724: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 dthdatas2_HostSADData i898) done
show goal725: "nextSnpRespIs RspIHitSE ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextSnpRespIs_sameside assms i948) done
show goal726: "nextSnpRespIs RspIHitSE ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 HostSADData_nextSnpRespIs_otherside i900) done
show goal727: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal728: "CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(265) assms i160) done
show goal729: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal730: "CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_inequality_invariant MESI_State.distinct(285) assms i160) done
show goal731: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i828 i905 nextGOPending_HostSADData) done
show goal732: "CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i828 i906 nextGOPending_HostSADData) done
show goal733: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i907 nextGOPending_HostSADData) done
show goal734: "CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i908 nextGOPending_HostSADData) done
show goal735: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i909 nextGOPending_HostSADData) done
show goal736: "CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i910 nextGOPending_HostSADData) done
show goal737: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i208 nextDTHDataFrom_def) done
show goal738: "HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal739: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i190 i514 i913 nextGOPending_HostSADData) done
show goal740: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 i914 nextGOPending_HostSADData) done
show goal741: "HSTATE InvalidM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(113) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal742: "HSTATE IB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(199) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal743: "HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(199) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal744: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIHitSE ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextSnpRespIs_sameside assms i948) done
show goal745: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIHitSE ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i92 nextReqIs_HostSADData_IMAD_invariant2) done
show goal746: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 assms i897 nextDTHDataFrom_def) done
show goal747: "CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 HostSADData_one_msg_htddatas1 i208 i921) done
show goal748: "HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) i224) done
show goal749: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal750: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpInv ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i148 i160 i164 i454 i618 nextDTHDataFrom_def nextSnoopIs_general_rule_11_0) done
show goal751: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(221) HSTATE_invariant3 i201) done
show goal752: "CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs DirtyEvict ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) assms i160 i92 nextReqIs_HostSADData_IMAD_invariant2) done
show goal753: "CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(11) i160 i1x i2x) done
show goal754: "CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE SA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_general_rule_5_0 i2x i897 nextDTHDataFrom_def) done
show goal755: "CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal756: "CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_general_rule_5_0 MESI_State.distinct(293) i160 i1x i2x) done
show goal757: "CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 HostSADData_one_msg_htddatas1 assms i732 i931 nextGOPendingStateGeneral_rule_11_0 nextGOPending_HostSADData snpresps2_HostSADData snps2_HostSADData) done
show goal758: "CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> snpresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = [] \<and> htddatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_different2 CSTATE_otherside_rule_20 MESI_State.distinct(293) i160 i1x i2x) done
show goal759: "(CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) i224) done
show goal760: "(CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) i224) done
show goal761: "(CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal762: "(CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> []"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(205) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal763: "(CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal764: "(CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HOST_State.distinct(203) HOST_State.distinct(223) HSTATE_invariant3 i201) done
show goal765: "CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i939 nextGOPendingStateGeneral_rule_11_0 nextGOPending_HostSADData snps1_HostSADData) done
show goal766: "CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i940 nextGOPendingStateGeneral_rule_11_1 nextGOPending_HostSADData snps2_HostSADData) done
show goal767: "CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> reqs1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i941 nextGOPendingStateGeneral_rule_11_0 nextGOPending_HostSADData reqs1_HostSADData) done
show goal768: "CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> reqs2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []"
apply  (insert assms) apply (smt (verit) assms i166 reqs2_HostSADData) done
show goal769: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) assms i190 nextHTDDataPending_SADData) done
show goal770: "HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextSnpRespIs_otherside assms i160 i732 nextSnpRespIs_property2) done
show goal771: "HSTATE SB ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 CSTATE_HostSADData_otherside_invariant3 assms i859 i945) done
show goal772: "nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant3 i946 nextReqIs_HostSADData_IMAD_invariant1) done
show goal773: "nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) CSTATE_HostSADData_otherside_invariant2 i947 nextReqIs_HostSADData_IMAD_invariant2) done
show goal774: "nextSnpRespIs RspIHitSE ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextSnpRespIs_sameside assms i948) done
show goal775: "nextSnpRespIs RspIHitSE ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])"
apply  (insert assms) apply (smt (verit) HostSADData_nextDataFrom_other assms i192) done
show goal776: "nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> \<not> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0"
apply  (insert assms) apply (smt (verit) HostSADData_nextSnpRespIs_sameside i950 nextReqIs_HostSADData_IMAD_invariant1) done
show goal777: "nextSnpRespIs RspIFwdM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> \<not> nextReqIs CleanEvictNoData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1"
apply  (insert assms) apply (smt (verit) HostSADData_nextSnpRespIs_otherside i951 nextReqIs_HostSADData_IMAD_invariant2) done
show goal778: "(CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) "
by (smt (verit) goal684 nextHTDDataPending_true_rule_2_0 nextHTDDataPending_various_forms2)
show goal779: "(CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextSnoopIs SnpData ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<longrightarrow> HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ])) "
by (smt (verit) goal237 nextHTDDataPending_true_rule_2_0)
show goal780: "((CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or>(CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) "
by (smt (verit) i224)
show goal781: "((CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or>(CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)   "
by (smt (verit) i224)
show goal782: "((CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> GTS ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or>(CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) "
by (smt (verit) i224)
show goal783: "((CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> GTS ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE ModifiedM ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> CSTATE Modified ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or>(CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextGOPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> (CSTATE IMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)   "
by (smt (verit) i224)
show goal784: "((CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> GTS ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> []) "
apply simp
done
show goal785: "((CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> GTS ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE MD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> dthdatas2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<noteq> [])  "
by (smt (verit) CSTATE_inequality_invariant HostSADData'_CSTATE_invariant2 MESI_State.simps(294) assms i160 i166 i2x)
show goal786: "((CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> GTS ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> ((CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)) "
apply simp
done
show goal787: "((CSTATE SIAC ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingState Invalid ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> \<not> CSTATE IIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> GTS ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> HSTATE MA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> ((CSTATE IMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) \<and> nextHTDDataPending ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE IMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> CSTATE SMA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0)) "
by (smt (verit) goal756 nextHTDDataPending_true_rule_2_0)
show goal788: "(HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []) "
by (smt (verit) i208 nextDTHDataFrom_def)
show goal789: "(HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> snps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []) "
by (smt (verit) HostSADData_nextDataFrom_other i193 i2x)
show goal790: "(HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []) "
by (smt (verit) i208 nextDTHDataFrom_def)
show goal791: "(HSTATE SD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> reqresps2 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) = []) "
by (smt (verit) HostSADData_nextDataFrom_other i193 i2x)
show goal792: "(HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 0 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (\<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) ) "
by (metis goal609 nextHTDDataPending_true_rule_2_0 numerals(1))
show goal793: "(HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (\<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0) ) "
by (metis HostSADData_nextDataFrom_other i192 i2x)
show goal794: "(CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (\<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<or> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1)) "
by (metis goal629 i201)
show goal795: "(CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> nextGOPendingIs GO_WritePull ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1 \<and> HSTATE ID ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> (\<not> CSTATE SIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<or> nextGOPendingIs GO_WritePullDrop ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0))  "
by (metis goal629 i201)
show goal796: "(HSTATE SAD ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<and> nextDTHDataFrom 1 ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) \<longrightarrow> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 0 \<and> \<not> CSTATE MIA ( T [ Dev2 +=h2dd hmsg] [ =hv v] [ 5 sHost= SA] [ Dev1 -=d2hdHead ]) 1) "
by (metis HostSADData_nextDataFrom_other assms i193)
qed
qed
lemma HostSADData'_coherent: shows "
SWMR_state_machine T \<Longrightarrow> Lall (HostSADData' T 0) SWMR_state_machine
"
unfolding HostSADData'_def copyInAndForwardData_def
using HostSADData'_coherent_aux_simpler
by (smt (verit) Lall.simps(1) Lall.simps(2) One_nat_def add_0_left bits_one_mod_two_eq_one clearBuffer_def nat_to_id.simps(1) nat_to_id.simps(2))
end
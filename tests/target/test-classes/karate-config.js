function() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	myVarName: 'someValue2',
  myTOKEN:  'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJkZWZhdWx0Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZWNyZXQubmFtZSI6ImRlZmF1bHQtdG9rZW4tanZ3YnYiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC5uYW1lIjoiZGVmYXVsdCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6IjhkOTE5YzhiLTRiNTctMTFlOC05MGFkLTAyMDYzYTZlNzZkNCIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDpkZWZhdWx0OmRlZmF1bHQifQ.ccs71NiWP9Nv_0urtt5tmebFNCXWopeR6yK9Jv8TEPuwUnM8x2dCyklEVL0qlZNQeodtOnRmRRiJGn-PKJud5Ptef_Q3pYMKWFjUeKSFstD59XLNpEEc_gWjS6X3xmFO4Zvrovh3Xd2iwwYtybRUjDWvqdAPCdjPHBbYjF6N-NMr2dv2O-lnXen3MpVX6_huCRqpYyVvWT4Ju9czMfrQD8EtKaeokIy41NxdA0vC9kDbO3d2czqgGAWU2oSa_cOmJhtp8I85IM1-XEXDWvukfhk7TFgrsXuGSxfpY_lE0QXQvXZaftuURUkPpEEplzQPB-SK3JxDUFeeGhkt3WRDrA'
    }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}

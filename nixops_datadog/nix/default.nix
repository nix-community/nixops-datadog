{
  config_exporters = { ... }: [];
  options = [];
  resources =
    { evalResources, zipAttrs, resourcesByType, ...}:
    {
      datadogMonitors = evalResources ./datadog-monitor.nix (zipAttrs resourcesByType.datadogMonitors or []);
      datadogTimeboards = evalResources ./datadog-timeboard.nix (zipAttrs resourcesByType.datadogTimeboards or []);
      datadogScreenboards = evalResources ./datadog-screenboard.nix (zipAttrs resourcesByType.datadogScreenboards or []);
    };
}

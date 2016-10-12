{ config, lib, uuid, name, ... }:

with lib;

{
  options = {

        apiKey = mkOption {
            default = "";
            type = types.str;
            description = "The Datadog API Key.";
        };
        appKey = mkOption {
            default = "";
            type = types.str;
            description = "The Datadog App Key.";
        };
        boardTitle = mkOption {
          default = "";
          type = types.str;
          description = "The name of the dashboard.";
        };
        description = mkOption {
          default = "";
          type = types.str;
          description = "A description of the dashboard's content.";
        };
        widgets = mkOption {
          type = types.listOf types.str;
          description = "A list of widget definitions.";
        };
        templateVariables = mkOption {
          default = [];
          type = types.listOf types.optionSet;
          description = "A list of template variables for using Dashboard templating.";
          options = {
            name = mkOption {
              type = types.str;
              description = "The name of the variable.";
            };
            prefix = mkOption {
              default = null;
              type = types.nullOr (types.str);
              description = "The tag prefix associated with the variable. Only tags with this prefix will appear in the variable dropdown.";
            };
            default = mkOption {
              default = null;
              type = types.nullOr (types.str);
              description = "The default value for the template variable on dashboard load";
            };
          };
        };
        width = mkOption {
          default = null;
          type = types.nullOr (types.int);
          description = "Screenboard width in pixels.";
        };
        height = mkOption {
          default = null;
          type = types.nullOr (types.int);
          description = "Height in pixels.";
        };
        readOnly = mkOption {
          default = false;
          type = types.bool;
          description = "The read-only status of the screenboard.";
        };
      };

  config._type = "datadog-screenboard";
}
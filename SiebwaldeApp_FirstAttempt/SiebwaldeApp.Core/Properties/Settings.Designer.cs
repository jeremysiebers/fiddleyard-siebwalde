﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SiebwaldeApp.Core.Properties {
    
    
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "17.7.0.0")]
    internal sealed partial class Settings : global::System.Configuration.ApplicationSettingsBase {
        
        private static Settings defaultInstance = ((Settings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Settings())));
        
        public static Settings Default {
            get {
                return defaultInstance;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("10")]
        public decimal FIDDLExYARDxSIMxSPEEDxSETTING {
            get {
                return ((decimal)(this["FIDDLExYARDxSIMxSPEEDxSETTING"]));
            }
            set {
                this["FIDDLExYARDxSIMxSPEEDxSETTING"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("Cyan")]
        public global::System.Drawing.Color SETxCOLORxTRACKxOCCUPIED {
            get {
                return ((global::System.Drawing.Color)(this["SETxCOLORxTRACKxOCCUPIED"]));
            }
            set {
                this["SETxCOLORxTRACKxOCCUPIED"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("Yellow")]
        public global::System.Drawing.Color SETxCOLORxTRACKxNOTxINITIALIZED {
            get {
                return ((global::System.Drawing.Color)(this["SETxCOLORxTRACKxNOTxINITIALIZED"]));
            }
            set {
                this["SETxCOLORxTRACKxNOTxINITIALIZED"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("RoyalBlue")]
        public global::System.Drawing.Color SETxCOLORxTRACKxNOTxACTIVE {
            get {
                return ((global::System.Drawing.Color)(this["SETxCOLORxTRACKxNOTxACTIVE"]));
            }
            set {
                this["SETxCOLORxTRACKxNOTxACTIVE"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("Transparent")]
        public global::System.Drawing.Color SETxCOLORxTRACKxDISABLED {
            get {
                return ((global::System.Drawing.Color)(this["SETxCOLORxTRACKxDISABLED"]));
            }
            set {
                this["SETxCOLORxTRACKxDISABLED"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("Transparent")]
        public global::System.Drawing.Color SETxCOLORxTRACKxDISABLEDxNOTxOCCUPIED {
            get {
                return ((global::System.Drawing.Color)(this["SETxCOLORxTRACKxDISABLEDxNOTxOCCUPIED"]));
            }
            set {
                this["SETxCOLORxTRACKxDISABLEDxNOTxOCCUPIED"] = value;
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("")]
        public string dummy {
            get {
                return ((string)(this["dummy"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("C:\\\\Localdata\\\\Siebwalde\\\\Logging\\\\")]
        public string LogDirectory {
            get {
                return ((string)(this["LogDirectory"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("28671")]
        public ushort FYSendingport {
            get {
                return ((ushort)(this["FYSendingport"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("28672")]
        public ushort FYReceivingport {
            get {
                return ((ushort)(this["FYReceivingport"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("60000")]
        public ushort TrckSendingPort {
            get {
                return ((ushort)(this["TrckSendingPort"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("60000")]
        public ushort TrckReceivingPort {
            get {
                return ((ushort)(this["TrckReceivingPort"]));
            }
        }
    }
}

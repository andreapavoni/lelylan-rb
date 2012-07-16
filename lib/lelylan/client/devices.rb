module Lelylan
  class Client
    module Devices

      # Public: Returns a list of owned devices.
      # Find more at {http://dev.lelylan.com/rest/devices/core/#all Lelylan Dev Center}.
      #
      # options - The Hash option used to refine the search (default: {}). 
      #           Check out the {http://dev.lelylan.com/rest/devices/core/#all API doc} for the accepted options.
      # 
      # Returns Hashie List of devices.
      #
      # Examples
      # 
      #   # Returns the first 25 devices
      #   client.devices
      #
      #   # Retrurns the first 10 devices
      #   client.devices(per: 10)
      #
      #   # Returns the devices of a specific type
      #   type = "http://api.lelyla.com/types/4dcb9e23d033a9088900023a"
      #   client.devices(type: type)
      #
      def devices(options = {})
        get("/devices", options)
      end

      # Public: Returns extended information for a given device
      # identified from its URI.
      # Find more at {http://dev.lelylan.com/rest/devices/core/#get Lelylan Dev Center}.
      #
      # uri - A String that represent the device URI.
      #
      # Returns Hashie The device.
      #
      # Examples
      #
      #   device = "http://api.lelylan.com/devices/4dcb9e23d033a9088900000a"
      #   client.device(device)
      #
      def device(uri)
        get("/devices/#{find_id(uri)}")
      end

      # Public: Create a device and returns extended information for it.
      # Find more at {http://dev.lelylan.com/rest/devices/core/#create Lelylan Dev Center}.
      #
      # options - The Hash option used to create the resource (default: {}). 
      #           Check out the {http://dev.lelylan.com/rest/devices/core/#create API doc} for the accepted options.
      # 
      # Returns Hashie The device.
      #
      # Examples
      # 
      #   type = "http://api.lelyla.com/types/4dcb9e23d033a9088900023a"
      #   client.create_device(name: "Dimmer", type: type)
      #
      def create_device(options = {})
        post("/devices", options)
      end

    end
  end
end
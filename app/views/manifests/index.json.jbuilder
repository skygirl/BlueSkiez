json.array!(@manifests) do |manifest|
  json.extract! manifest, :id, :bo_load_num, :password_digest, :bo_charges, :bo_debits, :bo_gear_rental, :bo_rental_rig_number, :bo_jump_type, :bo_aircraft, :bo_pilot, :bo_id
  json.url manifest_url(manifest, format: :json)
end

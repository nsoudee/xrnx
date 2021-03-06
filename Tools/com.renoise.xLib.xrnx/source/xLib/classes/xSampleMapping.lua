--[[============================================================================
xSampleMapping
============================================================================]]--

--[[--

Static methods for working with renoise sample mappings
.
#

### See also
@{xInstrument}

--]]

class 'xSampleMapping'

--------------------------------------------------------------------------------
--- Shift samples by amount of semitones, starting from the sample index 
-- @param instr (renoise.Instrument)
-- @param sample_idx_from (int)
-- @param amt (int)

function xSampleMapping.shift_keyzone_by_semitones(instr,sample_idx_from,amt)
  TRACE("xLib.shift_keyzone_by_semitones(instr,sample_idx_from,amt)",instr,sample_idx_from,amt)

  for sample_idx = sample_idx_from,#instr.samples do
    local sample = instr.samples[sample_idx]
    local smap = sample.sample_mapping
    smap.base_note = smap.base_note+amt
    smap.note_range = {smap.note_range[1]+amt, smap.note_range[2]+amt}
  end

end

